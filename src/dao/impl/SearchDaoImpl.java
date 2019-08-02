package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.SearchDao;
import entity.Goods;
import entity.Record;

@Service("searchDao")
public class SearchDaoImpl extends HibernateDaoSupport implements SearchDao {

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public List<Goods> findGoodByBrand(String brand) {
		return (List<Goods>)this.getHibernateTemplate().find("from entity.Goods Where brand=?",brand);
	}
	@Transactional
	public void saveRecord(Record record) {
	
			this.getHibernateTemplate().save(record);
		}
	@Override
	public List<Record> findRecordBySearch(String search) {
		return (List<Record>)this.getHibernateTemplate().find("from entity.Record Where search=?",search);
	}
	
	}
   
	
	