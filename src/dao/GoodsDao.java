package dao;

import java.util.List;

import entity.Goods;
import entity.User;

public interface GoodsDao {

	public List findGoods();
	public List findGoodsByBrand(String brand);
	public void saveGoods(Goods good);
	public void deleteGoodsByGid(int gid);
	public List findGoodsByKind(String kind);
	public List findGoodsByGid(int gid);
	public void editGoods(Goods good);
	
}