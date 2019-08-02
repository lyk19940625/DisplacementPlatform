package dao;

import java.util.List;

import entity.Goods;
import entity.Bargain;;

public interface BargainDao {

	public void saveBargain(Bargain bargain);
	public List findBargainByGid(int gid);
	public void deleteBargainByGid(int gid);
}