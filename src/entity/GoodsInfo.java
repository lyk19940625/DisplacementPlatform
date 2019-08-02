package entity;

import java.util.Date;

public class GoodsInfo {
	private int gid;
	private int price;
	private String brand;
	private String gname;
	private String introduce;
	private String user;
	private int count;
	private String picture;
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public GoodsInfo(int gid, int price,String brand,String gname,String introduce,String picture,String user,int count) {
		super();
		this.gid = gid;
		this.price = price;
		this.brand = brand;
		this.gname = gname;
		this.introduce = introduce;
		this.picture = picture;
		this.user = user;
		this.count = count;
	}
}