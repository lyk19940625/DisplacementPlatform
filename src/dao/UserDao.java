package dao;

import java.util.List;

import entity.User;

public interface UserDao {

	public List findUser();
	public List findUserByUid(String Uid);
	public void saveUser(User user);
	public void deleteUserByUid(int uid);
	public List findUserByUname(String uname);
	public void editUser(User user);
	
}