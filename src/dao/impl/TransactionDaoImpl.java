package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.TransactionDao;
import entity.Goods;
import entity.Transaction;
import entity.User;


@Service("transactionDao")
public class TransactionDaoImpl extends HibernateDaoSupport implements TransactionDao {

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	
	@Override
	public List<Transaction> findTransactionByOutuid(String outuid) {
		return (List<Transaction>)this.getHibernateTemplate().find("from entity.Transaction Where outuid=?",outuid);
	}
	@Override
	public List<Transaction> findTransaction() {
		return (List<Transaction>)this.getHibernateTemplate().find("from entity.Transaction");
	}
	@Override
	public List<Transaction> findTransactionByInuid(String inuid) {
		return (List<Transaction>)this.getHibernateTemplate().find("from entity.Transaction Where inuid=?",inuid);
	}
	@Override
	public List<Transaction> findTransactionByGid(int gid) {
		return (List<Transaction>)this.getHibernateTemplate().find("from entity.Transaction Where gid=?",gid);
	}
	@Transactional
	public void saveTransaction(Transaction transaction) {
	
			this.getHibernateTemplate().save(transaction);
		}
	@Transactional
	public void editTransaction(Transaction transaction) {
		if(transaction!=null){
			this.getHibernateTemplate().update(transaction);
		}
	}
	@Transactional
	public void deleteTransactionByGid(int gid) {
		List<Transaction> t=(List<Transaction>)this.getHibernateTemplate().find("from entity.Transaction Where gid=?",gid);
		Transaction transaction=t.get(0);
		if(transaction!=null){
			this.getHibernateTemplate().delete(transaction);
		}
	}
	}