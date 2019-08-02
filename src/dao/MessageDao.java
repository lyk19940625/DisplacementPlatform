package dao;

import java.util.List;

import entity.Goods;
import entity.Message;

public interface MessageDao {

	public void saveMessage(Message message);
	public List findMessageByUid(String Uid);

}