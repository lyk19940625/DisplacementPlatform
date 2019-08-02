package dao;

import java.util.List;

import entity.Goods;
import entity.Record;

public interface SearchDao {

	public void saveRecord(Record record);
	public List findGoodByBrand(String brand);
	public List findRecordBySearch(String search);

}