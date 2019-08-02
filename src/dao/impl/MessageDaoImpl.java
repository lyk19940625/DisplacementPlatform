package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.MessageDao;
import entity.Goods;
import entity.Message;

@Service("messageDao")
public class MessageDaoImpl extends HibernateDaoSupport implements MessageDao {

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public List<Message> findMessageByUid(String uid) {
		return (List<Message>)this.getHibernateTemplate().find("from entity.Message Where uid=?",uid);
	}
	@Transactional
	public void saveMessage(Message message) {
	
			this.getHibernateTemplate().save(message);
		}
	}
   
	
	


