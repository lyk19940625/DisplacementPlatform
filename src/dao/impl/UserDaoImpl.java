package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UserDao;
import entity.User;

@Service("userDao")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public List<User> findUser() {
		return (List<User>)this.getHibernateTemplate().find("from entity.User");
	}
	
	@Override
	public List<User> findUserByUid(String uid) {
		return (List<User>)this.getHibernateTemplate().find("from entity.User Where uid=?",uid);
	}
	@Transactional
	public void saveUser(User user) {
	
			this.getHibernateTemplate().save(user);
		}
    @Transactional
	public void deleteUserByUid(int uid) {
		User user=(User)this.getHibernateTemplate().get(User.class, uid);
		if(user!=null){
			this.getHibernateTemplate().delete(user);
		}
	}
	@Override
	public List findUserByUname(String uname) {
		return (List<User>)this.getHibernateTemplate().find("from entity.User Where uname='"+uname+"'");
		
	}
	@Transactional
	public void editUser(User user) {
		if(user!=null){
			this.getHibernateTemplate().update(user);
		}
	}
   
	}
	


