package controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import dao.UserDao;
import entity.User;


@Controller  
@RequestMapping("/register") 
public class RegisterController {
	
	@Resource
    private UserDao userDao; 
	   @RequestMapping(value="/save",method = RequestMethod.POST)  
	  public String saveUser(User user) {  
    	userDao.saveUser(user);
        return "Login";  
    }  
}
