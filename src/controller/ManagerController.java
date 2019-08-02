package controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
@RequestMapping("/manager") 
public class ManagerController {
	@Resource
    private GoodsDao goodsDao; 
	@Resource
    private TransactionDao transactionDao; 
	@Resource
    private UserDao userDao; 
	//用户信息
	   @RequestMapping(value="/qurey_user",method = RequestMethod.GET)  
	      public String query_user(ModelMap map,HttpServletRequest req) {  
		   List<User> users=userDao.findUser();
		   map.addAttribute("userlist",users);
	        return "Manager_User";  
	      }  
	
	   //商品信息
	   @RequestMapping(value="/query_good",method = RequestMethod.GET)  
	      public String query_good(ModelMap map,HttpServletRequest req) {  
		   List<Goods> goods=goodsDao.findGoods();
		   map.addAttribute("goodslist",goods);
		  
	        return "Manager_Goods";  
	      }  
	//交易记录
	   @RequestMapping(value="/query_transaction",method = RequestMethod.GET)  
	      public String query_transaction(ModelMap map,HttpServletRequest req) {  
		   List<Transaction> transaction=transactionDao.findTransaction();
		   map.addAttribute("transactionlist",transaction);
		  
	        return "Manager_Transaction";  
	      }  
	   @RequestMapping(value="/query" , method = RequestMethod.POST)  
	    public String queryUser(ModelMap map,String uid,String uname,HttpServletRequest req) {
		  
	
			   List<User> user=userDao.findUserByUname(uname);
		
				  map.addAttribute("user",user);
		
	        return "Manager_Edit";  
	    } 
	   //修改信息
	   @RequestMapping(value="/edit_user" , method = RequestMethod.POST)  
	    public String editUser(ModelMap map,User user,HttpServletRequest req) {
			userDao.editUser(user);
	        return "Manager";  
	    } 
		
}
