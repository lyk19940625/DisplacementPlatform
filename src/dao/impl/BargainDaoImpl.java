package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.BargainDao;
import entity.Goods;
import entity.Bargain;
import entity.Transaction;

@Service("bargainDao")
public class BargainDaoImpl extends HibernateDaoSupport implements BargainDao {

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public List<Bargain> findBargainByGid(int gid) {
		return (List<Bargain>)this.getHibernateTemplate().find("from entity.Bargain Where gid=?",gid);
	}
	@Transactional
	public void saveBargain(Bargain bargain) {
	
			this.getHibernateTemplate().save(bargain);
		}
	@Transactional
	public void deleteBargainByGid(int gid) {
		List<Bargain> b=(List<Bargain>)this.getHibernateTemplate().find("from entity.Bargain Where gid=?",gid);
	
		for(int i=0;i<=b.size()-1;i++){
			Bargain bargain = b.get(i);
		
			if(bargain!=null){
				this.getHibernateTemplate().delete(bargain);
			}
		}
		
	}
	}
   
	
	


