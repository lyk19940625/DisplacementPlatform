package controller;

import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import dao.BargainDao;
import dao.GoodsDao;
import dao.TransactionDao;
import dao.UserDao;
import entity.Bargain;
import entity.Goods;
import entity.User;
import entity.Transaction;

@Controller  
@RequestMapping("/transaction") 
public class TransactionController {
	@Resource
    private GoodsDao goodsDao; 
	@Resource
    private TransactionDao transactionDao; 
	@Resource
    private UserDao userDao; 
	@Resource
    private BargainDao bargainDao; 
	//交易记录
	@RequestMapping(value="/order" , method = RequestMethod.GET)  
    public String Search(ModelMap map,String gid,String count,HttpServletRequest req) {
		int goodid=Integer.parseInt(gid);
		int num=Integer.parseInt(count);
		String inuid=((User)req.getSession().getAttribute("user")).getUid();
	    Calendar c = Calendar.getInstance();
		String nowTime = c.getTime().toString();
 		System.out.println("DATE"+nowTime);
		Transaction transaction =(Transaction) transactionDao.findTransactionByGid(goodid).get(0);
		transaction.setInuid(inuid);
 		transaction.setTime(nowTime);
		transaction.setCount(num);
		Goods good =(Goods) goodsDao.findGoodsByGid(goodid).get(0);
		int price = good.getPrice()*num;
		transaction.setPrice(price);
		transactionDao.editTransaction(transaction);
		
		good.setState("待发货");
		int a = good.getCount();
		good.setCount(num);
 	    goodsDao.editGoods(good);
 	    int b =  a-num;
 	    good.setCount(b);
		if(b!=0){
			good.setState("售卖");
            good.setGid(null);
			goodsDao.saveGoods(good);
			String out= transaction.getOutuid();
			Transaction transaction1 =new Transaction();
			  transaction1.setGid(good.getGid());
			  transaction1.setOutuid(out);
			  transactionDao.saveTransaction(transaction1);
		}
 	    return "redirect:/info/check";  
	
	}
	//留言议价
	   @RequestMapping(value="/bargain",method = RequestMethod.GET)  
		  public String Bargain(Bargain bargain,HttpServletRequest req) {  
		   String uid=((User)req.getSession().getAttribute("user")).getUid();
		   bargain.setUid(uid);
		   bargainDao.saveBargain(bargain);
	    	String gid=String.valueOf(bargain.getGid());
	        return "redirect:/goods/qury_detail?gid="+gid; 
	    }  
	   @RequestMapping(value="/outbargain",method = RequestMethod.GET)  
		  public String OBargain(Bargain bargain,HttpServletRequest req) {  
		   String uid=((User)req.getSession().getAttribute("user")).getUid();
		   bargain.setUid(uid);
		   bargainDao.saveBargain(bargain);
	    	String gid=String.valueOf(bargain.getGid());
	        return "redirect:/goods/qury_ogood?gid="+gid; 
	    }  
	   //评价
	   @RequestMapping(value="/evaluate",method = RequestMethod.GET)  
	      public String editEvaluate(String gid,String evaluate) {  
			  int goodid=Integer.parseInt(gid);
			  Transaction t =(Transaction) transactionDao.findTransactionByGid(goodid).get(0);
			  t.setEvaluate(evaluate);
			  transactionDao.editTransaction(t);
			  Goods good = (Goods) goodsDao.findGoodsByGid(goodid).get(0);
			  good.setState("交易完成");
			  goodsDao.editGoods(good);
	      	 return "redirect:/goods/qury_igood?gid="+gid; 
	      }  
	
}
