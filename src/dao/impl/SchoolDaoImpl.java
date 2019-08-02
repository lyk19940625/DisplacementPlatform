package dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.SchoolDao;
import dao.SearchDao;
import entity.Goods;
import entity.School;
@Service("schoolDao")
public class SchoolDaoImpl extends HibernateDaoSupport implements SchoolDao {
	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public List<School> findSchoolByName(String name) {
		return (List<School>)this.getHibernateTemplate().find("from entity.School Where schoolname=?",name);
	}
}
