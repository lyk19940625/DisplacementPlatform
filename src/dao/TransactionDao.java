package dao;

import java.util.List;

import entity.Transaction;
import entity.User;

public interface TransactionDao {
	public void saveTransaction(Transaction transaction);
	public List findTransactionByOutuid(String outuid);
	public List findTransaction();
	public List findTransactionByInuid(String inuid);
	public List findTransactionByGid(int gid);
	public void editTransaction(Transaction transaction);
	public void deleteTransactionByGid(int gid);
}
