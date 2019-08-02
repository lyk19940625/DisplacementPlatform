package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.GoodsDao;
import dao.MessageDao;
import dao.UserDao;
import entity.ArrayEntity;
import entity.Goods;
import entity.Transaction;
import entity.User;


@Controller  
@RequestMapping("/login") 
public class LoginController {
	@Resource
    private UserDao userDao; 
	@Resource
    private GoodsDao goodsDao;
	@Resource
    private MessageDao messageDao; 
	@RequestMapping(value="/check" , method = RequestMethod.GET)  
    public String queryUser(ModelMap map,String uid,String password,HttpServletRequest req) {
		if(uid.equals("001")&&password.equals("123456")){
			
			return"Manager";
		}
		else{
		List<User> user=userDao.findUserByUid(uid);
		if(user.size()==0){
			 return "Login";  
		}
		User u = user.get(0);
    	 HttpSession session=req.getSession();
 	    session.setAttribute("user", u);
 	     map.addAttribute("messagelist",messageDao.findMessageByUid(uid));
    	if(u.getPwd().equals(password)){
    		
    			return"index";
    		
    	}
    	
        return "Login";  
    } 
	}
	@ResponseBody
	 @RequestMapping(value="/chart",method = RequestMethod.POST)  
     public JSONArray queryChart() {  
		 List<Goods> goods =goodsDao.findGoods();
		 
			int a=0,b=0,c=0,d=0,e=0,f=0,g=0;
			for(int i=0;i<=goods.size()-1;i++){
				
				if(goods.get(i).getKind().equals("001")){
				a++;
				}
				if(goods.get(i).getKind().equals("002")){
					b++;
					}
				if(goods.get(i).getKind().equals("003")){
					c++;
					}
				if(goods.get(i).getKind().equals("004")){
					d++;
					}
				if(goods.get(i).getKind().equals("005")){
					e++;
					}
				if(goods.get(i).getKind().equals("006")){
					f++;
					}
				if(goods.get(i).getKind().equals("007")){
					g++;
					}		
			}
			int[] Array = {a,b,c,d,e,f,g};
			for (int i : Array) {
				
			}
			ArrayEntity array = new ArrayEntity(Array);
			JSONObject js = JSONObject.fromObject(array);
       return JSONArray.fromObject(Array);
     

}
}
