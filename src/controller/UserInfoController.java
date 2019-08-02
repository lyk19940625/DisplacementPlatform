package controller;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import dao.GoodsDao;
import dao.MessageDao;
import dao.TransactionDao;
import entity.Goods;
import entity.Transaction;
import entity.User;
import entity.UserGoods;

@Controller  
@RequestMapping("/info") 
public class UserInfoController {
	
	@Resource
    private MessageDao messageDao; 
	@Resource
    private TransactionDao transactionDao; 
	@Resource
    private GoodsDao goodsDao; 
	@RequestMapping(value="/check" , method = RequestMethod.GET)  
    public String queryInfo(ModelMap map,HttpServletRequest req) {
		//推送消息
		String uid=((User)req.getSession().getAttribute("user")).getUid();
 	     map.addAttribute("messagelist",messageDao.findMessageByUid(uid));
 	     //已发布商品
 	    List<UserGoods> outlist = new ArrayList<UserGoods>();
 	    List<Transaction> transaction1 =transactionDao.findTransactionByOutuid(uid);
 	   for(int i = 0;i < transaction1.size(); i ++){
 		  Transaction t1 =transaction1.get(i);
 		 List<Goods> outgoods = goodsDao.findGoodsByGid(t1.getGid());
 		 UserGoods ugs1 =new UserGoods(t1.getGid(),outgoods.get(0).getPicture());
 		 outlist.add(ugs1);
 		
       }
 	     map.addAttribute("outlist",outlist);
 	     //已购买商品
 	    List<UserGoods> inlist = new ArrayList<UserGoods>();
 	   
 	    List<Transaction> transaction2 =transactionDao.findTransactionByInuid(uid);
 	   for(int i = 0;i < transaction2.size(); i ++){
 		  Transaction t2 =transaction2.get(i);
 		 List<Goods> ingoods = goodsDao.findGoodsByGid(t2.getGid());
 		 UserGoods ugs2 =new UserGoods(t2.getGid(),ingoods.get(0).getPicture());
 		 inlist.add(ugs2); 
 	  } 
 	  map.addAttribute("inlist",inlist);
        return "User";  
   

	}
}
