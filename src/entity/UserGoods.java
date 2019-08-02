package entity;

import java.util.Date;

public class UserGoods {
	private int gid;
	private String picture;
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public UserGoods(int gid, String picture) {
		super();
		this.gid = gid;
		this.picture = picture;
	}
	
}
