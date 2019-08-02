package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.GoodsDao;
import entity.Goods;
import entity.User;


@Service("goodsDao")
public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	
	@Transactional
	public void saveGoods(Goods good) {
	
			this.getHibernateTemplate().save(good);
		}
	
    @Transactional
	public void deleteGoodsByGid(int gid) {
		Goods goods=(Goods)this.getHibernateTemplate().get(Goods.class, gid);
		if(goods!=null){
			this.getHibernateTemplate().delete(goods);
		}
	}
    @Override
	public List findGoods() {
		return (List<Goods>)this.getHibernateTemplate().find("from entity.Goods");
		
	}
    @Override
	public List findGoodsByGid(int gid) {
		return (List<Goods>)this.getHibernateTemplate().find("from entity.Goods Where gid='"+gid+"'");
		
	}
	@Override
	public List findGoodsByKind(String kind) {
		return (List<Goods>)this.getHibernateTemplate().find("from entity.Goods Where kind='"+kind+"'");
		
	}
	@Override
	public List findGoodsByBrand(String brand) {
		return (List<Goods>)this.getHibernateTemplate().find("from entity.Goods Where brand='"+brand+"'");
		
	}
	@Transactional
	public void editGoods(Goods good) {
		if(good!=null){
			this.getHibernateTemplate().update(good);
		}
	}
   
	}
	


