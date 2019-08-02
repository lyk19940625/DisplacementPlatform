package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import dao.BargainDao;
import dao.GoodsDao;
import dao.MessageDao;
import dao.TransactionDao;
import dao.UserDao;
import dao.SearchDao;
import entity.Bargain;
import entity.Goods;
import entity.Message;
import entity.User;
import entity.Transaction;
import entity.Record;
import entity.GoodsInfo;;

@Controller  
@RequestMapping("/goods") 
public class GoodsController {
	@Resource
    private GoodsDao goodsDao; 
	@Resource
    private TransactionDao transactionDao; 
	@Resource
    private UserDao userDao; 
	@Resource
    private SearchDao searchDao; 
	@Resource
    private MessageDao messageDao; 
	@Resource
    private BargainDao bargainDao; 
	@RequestMapping(value="/qury_kind" , method = RequestMethod.GET)  
    public String queryKind(String kind,ModelMap map,HttpServletRequest req) {
		List<Goods> goods=goodsDao.findGoodsByKind(kind);
		List<GoodsInfo> info = new ArrayList<GoodsInfo>();
		for(int i=0;i<=goods.size()-1;i++){
			Goods good=goods.get(i);
			if(good.getState().equals("售卖")){
			String uid = ((Transaction)transactionDao.findTransactionByGid(good.getGid()).get(0)).getOutuid();
			String uname = ((User)userDao.findUserByUid(uid).get(0)).getUname();
			GoodsInfo g=new GoodsInfo(good.getGid(), good.getPrice(), good.getBrand(), good.getGname(), good.getIntroduce(), good.getPicture(), uname, good.getCount());
			info.add(g);
			}
		}
		Goods g=goods.get(0);
		
		 HttpSession session=req.getSession();
	 	    session.setAttribute("good", g);
 	    map.addAttribute("infolist",info);
        return "Kind";  
    } 
	@RequestMapping(value="/qury_price" , method = RequestMethod.GET)  
    public String queryPrice(String price,String kind,ModelMap map,HttpServletRequest req) {
		int p=Integer.parseInt(price);
		List<Goods> all=goodsDao.findGoodsByKind(kind);
		List<Goods> goods=new ArrayList<Goods>();
		if(p==1){
		for(int i=0;i<=all.size()-1;i++){
				if(all.get(i).getPrice()>0&&all.get(i).getPrice()<=50){
					goods.add(all.get(i));
				}
		}
		}
		if(p==2){
			for(int i=0;i<=all.size()-1;i++){
					if(all.get(i).getPrice()>50&&all.get(i).getPrice()<=100){
						goods.add(all.get(i));
					}
			}
			}
		if(p==3){
			for(int i=0;i<=all.size()-1;i++){
					if(all.get(i).getPrice()>100&&all.get(i).getPrice()<=500){
						goods.add(all.get(i));
					}
			}
			}
		if(p==4){
			for(int i=0;i<=all.size()-1;i++){
					if(all.get(i).getPrice()>500&&all.get(i).getPrice()<=1000){
						goods.add(all.get(i));
					}
			}
			}
		if(p==5){
			for(int i=0;i<=all.size()-1;i++){
					if(all.get(i).getPrice()>1000&&all.get(i).getPrice()<=2000){
						goods.add(all.get(i));
					}
			}
			}
		if(p==6){
			for(int i=0;i<=all.size()-1;i++){
					if(all.get(i).getPrice()>2000&&all.get(i).getPrice()<=5000){
						goods.add(all.get(i));
					}
			}
			}
	
		List<GoodsInfo> info = new ArrayList<GoodsInfo>();
		for(int i=0;i<=goods.size()-1;i++){
			Goods good=goods.get(i);
			if(good.getState().equals("售卖")){
			String uid = ((Transaction)transactionDao.findTransactionByGid(good.getGid()).get(0)).getOutuid();
			String uname = ((User)userDao.findUserByUid(uid).get(0)).getUname();
			GoodsInfo g=new GoodsInfo(good.getGid(), good.getPrice(), good.getBrand(), good.getGname(), good.getIntroduce(), good.getPicture(), uname, good.getCount());
			info.add(g);
			}
		}
 	    map.addAttribute("infolist",info);
        return "Kind";  
    } 
	@RequestMapping(value="/qury_brand" , method = RequestMethod.GET)  
    public String queryBrand(ModelMap map,String brand,HttpServletRequest req) {
		List<Goods> goods=goodsDao.findGoodsByBrand(brand);
		List<GoodsInfo> info = new ArrayList<GoodsInfo>();
		for(int i=0;i<=goods.size()-1;i++){
			Goods good=goods.get(i);
			if(good.getState().equals("售卖")){
			String uid = ((Transaction)transactionDao.findTransactionByGid(good.getGid()).get(0)).getOutuid();
			String uname = ((User)userDao.findUserByUid(uid).get(0)).getUname();
			GoodsInfo g=new GoodsInfo(good.getGid(), good.getPrice(), good.getBrand(), good.getGname(), good.getIntroduce(), good.getPicture(), uname, good.getCount());
			info.add(g);
			}
		}
 	    map.addAttribute("infolist",info);
        return "Kind";  
    } 
	@RequestMapping(value="/qury_detail" , method = RequestMethod.GET)  
    public String queryDetail(ModelMap map,String gid,HttpServletRequest req) {
		int goodid=Integer.parseInt(gid);
		List<Goods> goods=goodsDao.findGoodsByGid(goodid);
		List<Transaction> transaction=transactionDao.findTransactionByGid(goodid);
		List<User> user=userDao.findUserByUid(transaction.get(0).getOutuid());
		List<Bargain> bargain = bargainDao.findBargainByGid(goodid);
		for(int i=0;i<=(bargain.size()-1);i++){
			String uname =((User) userDao.findUserByUid(bargain.get(i).getUid()).get(0)).getUname();
			if(bargain.get(i).getUid().equals(user.get(0).getUid()))
				uname=uname+"(卖家)";
			bargain.get(i).setUid(uname);
		}
		map.addAttribute("userlist",user);
		map.addAttribute("goodslist",goods);
		map.addAttribute("bargainlist",bargain);
        return "Details";  
    } 
	
	@RequestMapping(value="/qury_igood" , method = RequestMethod.GET)  
    public String queryIgood(ModelMap map,String gid,HttpServletRequest req) {
		int goodid=Integer.parseInt(gid);
		List<Goods> goods=goodsDao.findGoodsByGid(goodid);
		List<Transaction> transaction=transactionDao.findTransactionByGid(goodid);
		
		List<User> user=userDao.findUserByUid(transaction.get(0).getOutuid());
		map.addAttribute("transactionlist",transaction);
		map.addAttribute("userlist",user);
		map.addAttribute("goodslist",goods);
        return "InDetail";  
    } 
	@RequestMapping(value="/qury_ogood" , method = RequestMethod.GET)  
    public String queryOgood(ModelMap map,String gid,HttpServletRequest req) {
		int goodid=Integer.parseInt(gid);
		List<Goods> goods=goodsDao.findGoodsByGid(goodid);
		List<Transaction> transaction=transactionDao.findTransactionByGid(goodid);
		Transaction t = transaction.get(0);
		List<User> user=userDao.findUserByUid(transaction.get(0).getOutuid());
		List<Bargain> bargain = bargainDao.findBargainByGid(goodid);
		for(int i=0;i<=(bargain.size()-1);i++){
			String uname =((User) userDao.findUserByUid(bargain.get(i).getUid()).get(0)).getUname();
			if(bargain.get(i).getUid().equals(user.get(0).getUid()))
				uname=uname+"(卖家)";
			bargain.get(i).setUid(uname);
		}
		 HttpSession session=req.getSession();
	 	    session.setAttribute("transaction", t);
		map.addAttribute("userlist",user);
		map.addAttribute("goodslist",goods);
		map.addAttribute("bargainlist",bargain);
        return "OutDetail";  
    } 
	@RequestMapping(value="/qury_order" , method = RequestMethod.GET)  
    public String queryOrder(ModelMap map,String gid,String count,HttpServletRequest req) {
		int goodid=Integer.parseInt(gid);
		int num=Integer.parseInt(count);
		System.out.println("aaaaa"+goodid+num);
		List<Goods> goods=goodsDao.findGoodsByGid(goodid);
		Goods good = goods.get(0);
		good.setCount(num);
		int price = num*good.getPrice();
		good.setPrice(price);
		map.addAttribute("goodslist",goods);
        return "Order";    
    } 
	   @RequestMapping(value="/save",method = RequestMethod.POST)  
		  public String saveGoods(Goods good) {  
	    	goodsDao.saveGoods(good);
	        return "Login";  
	    }  
	   
	  @RequestMapping(value="/delete" , method = RequestMethod.GET)  
	    public String Delete(ModelMap map,String gid,HttpServletRequest req) {
		  int goodid=Integer.parseInt(gid);
			goodsDao.deleteGoodsByGid(goodid);
	 	    transactionDao.deleteTransactionByGid(goodid);
	 	    bargainDao.deleteBargainByGid(goodid);
	 	   return "redirect:/info/check";  
	    } 
		
	  @RequestMapping(value="/upload",method = RequestMethod.POST)
	  public String upload2(Goods good,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
		//储存商品信息
		  if(good.getPicture1().equals("")){
			  good.setPicture1("aaa.jpg");
		  }
		  if(good.getPicture2().equals("")){
			  good.setPicture2("aaa.jpg");
		  }
		  if(good.getPicture3().equals("")){
			  good.setPicture3("aaa.jpg");
		  }
		  if(good.getPicture4().equals("")){
			  good.setPicture4("aaa.jpg");
		  }
		  if(good.getPicture5().equals("")){
			  good.setPicture5("aaa.jpg");
		  }
		 
		  System.out.println("图片"+good.getPicture5());
		  goodsDao.saveGoods(good);
		//储存推送消息
		  String brand =good.getBrand();
		  String content="好消息！！您浏览过的"+brand+"上新啦，快来看看吧！！！";
		  List<Record> re = searchDao.findRecordBySearch(brand);
		  System.out.println("sdadasda"+re);
		  if(re.size()!=0){
			  List <Record>record=searchDao.findRecordBySearch(brand);
			  Record r=record.get(record.size()-1);
			  Message message = new Message();
			  message.setUid(r.getUid());
			  message.setContent(content);
			  message.setGid(good.getGid());
			  messageDao.saveMessage(message);
		  }
		//储存交易信息
		 String uid=((User)request.getSession().getAttribute("user")).getUid();
		 int gid = good.getGid();
		  Transaction transaction =new Transaction();
		  transaction.setGid(gid);
		  transaction.setOutuid(uid);
		  transactionDao.saveTransaction(transaction);
		  //创建一个通用的多部分解析器  
	        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
	        //判断 request 是否有文件上传,即多部分请求  
	        if(multipartResolver.isMultipart(request)){  
	            //转换成多部分request    
	            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
	            //取得request中的所有文件名  
	            Iterator<String> iter = multiRequest.getFileNames();  
	            while(iter.hasNext()){  
	                //记录上传过程起始时的时间，用来计算上传时间  
	                int pre = (int) System.currentTimeMillis();  
	                //取得上传文件  
	                MultipartFile file = multiRequest.getFile(iter.next());  
	                if(file != null){  
	                    //取得当前上传文件的文件名称  
	                    String myFileName = file.getOriginalFilename();  
	                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
	                    if(myFileName.trim() !=""){  
	                       
	                        //重命名上传后的文件名  
	                        String fileName = file.getOriginalFilename();  
	                        //定义上传路径  
	                        String path = "H:/JavaWorkSpace/DisplacementPlatform/WebRoot/upload/" + fileName;
	                        File localFile = new File(path);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();  
	            }  
	              
	        }  
	        return "redirect:/info/check";  
	    }  
	  @RequestMapping(value="/qury_kinds" , method = RequestMethod.GET)  
	    public String queryKinds(String kind,String school,ModelMap map,HttpServletRequest req) {
			List<Goods> goods=goodsDao.findGoodsByKind(kind);
			List<GoodsInfo> info = new ArrayList<GoodsInfo>();
			for(int i=0;i<=goods.size()-1;i++){
				Goods good=goods.get(i);
				List<Transaction> t = transactionDao.findTransactionByGid(good.getGid());
				for(int j=0;j<=t.size()-1;j++){
					String uids=t.get(j).getInuid();
					User user = (User) userDao.findUserByUid(uids);
					if(user.getSchool().equals(school)){
				if(good.getState().equals("售卖")){
				String uid = ((Transaction)transactionDao.findTransactionByGid(good.getGid()).get(0)).getOutuid();
				String uname = ((User)userDao.findUserByUid(uid).get(0)).getUname();
				GoodsInfo g=new GoodsInfo(good.getGid(), good.getPrice(), good.getBrand(), good.getGname(), good.getIntroduce(), good.getPicture(), uname, good.getCount());
				info.add(g);
				}
			}
			}
			}
			Goods g=goods.get(0);
			
			 HttpSession session=req.getSession();
		 	    session.setAttribute("good", g);
	 	    map.addAttribute("infolist",info);
			
	        return "Kind";  
	    } 
		@RequestMapping(value="/edit_good" , method = RequestMethod.GET)  
	    public String editgood(ModelMap map,String gid,String price,String deliver,HttpServletRequest req) {
			int goodid=Integer.parseInt(gid);
			int p=Integer.parseInt(price);
			Goods good = (Goods) goodsDao.findGoodsByGid(goodid).get(0);
			good.setPrice(p);
		
			Transaction transaction = (Transaction) transactionDao.findTransactionByGid(goodid).get(0);
			transaction.setDeliver(deliver);
			transactionDao.editTransaction(transaction);
			if(!transaction.getDeliver().equals("")){
				good.setState("待评价");
			}
			goodsDao.editGoods(good);
	        return "redirect:/goods/qury_ogood?gid="+gid; 
	    } 
	
	}  
	  

