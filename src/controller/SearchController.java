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

import dao.GoodsDao;
import dao.TransactionDao;
import dao.UserDao;
import dao.SearchDao;
import entity.Goods;
import entity.GoodsInfo;
import entity.Record;
import entity.User;
import entity.Transaction;
@Controller  
@RequestMapping("/search") 
public class SearchController {
	@Resource
    private GoodsDao goodsDao; 
	@Resource
    private UserDao userDao; 
	@Resource
    private TransactionDao transactionDao; 
	@Resource
    private SearchDao searchDao; 
	@RequestMapping(value="/goods" , method = RequestMethod.GET)  
    public String Search(ModelMap map,String search,HttpServletRequest req) {
		List<GoodsInfo> info = new ArrayList<GoodsInfo>();
		List<Goods> goods=goodsDao.findGoodsByBrand(search);
		for(int i=0;i<=goods.size()-1;i++){
			Goods good=goods.get(i);
			if(good.getState().equals("ÊÛÂô")){
				String uid = ((Transaction)transactionDao.findTransactionByGid(good.getGid()).get(0)).getOutuid();
				String uname = ((User)userDao.findUserByUid(uid).get(0)).getUname();
				GoodsInfo g=new GoodsInfo(good.getGid(), good.getPrice(), good.getBrand(), good.getGname(), good.getIntroduce(), good.getPicture(), uname, good.getCount());
				info.add(g);
			    }
			}
		
 	     map.addAttribute("infolist",info);
 	    String uid=((User)req.getSession().getAttribute("user")).getUid();
 	     Record record =new Record();
 	     record.setUid(uid);
 	     record.setSearch(search);
 	     searchDao.saveRecord(record);
 	    return "Kind";  
	
	}
}
