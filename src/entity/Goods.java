package entity;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private Integer gid;
	private String gname;
	private String kind;
	private Integer count;
	private String introduce;
	private String picture;
	private Integer price;
	private String brand;
	private String state;
	private String picture1;
	private String picture2;
	private String picture3;
	private String picture4;
	private String picture5;

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** full constructor */
	public Goods(String gname, String kind, Integer count, String introduce,
			String picture, Integer price, String brand, String state,
			String picture1, String picture2, String picture3, String picture4,
			String picture5) {
		this.gname = gname;
		this.kind = kind;
		this.count = count;
		this.introduce = introduce;
		this.picture = picture;
		this.price = price;
		this.brand = brand;
		this.state = state;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.picture3 = picture3;
		this.picture4 = picture4;
		this.picture5 = picture5;
	}

	// Property accessors

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public String getGname() {
		return this.gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getKind() {
		return this.kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getBrand() {
		return this.brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPicture1() {
		return this.picture1;
	}

	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}

	public String getPicture2() {
		return this.picture2;
	}

	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}

	public String getPicture3() {
		return this.picture3;
	}

	public void setPicture3(String picture3) {
		this.picture3 = picture3;
	}

	public String getPicture4() {
		return this.picture4;
	}

	public void setPicture4(String picture4) {
		this.picture4 = picture4;
	}

	public String getPicture5() {
		return this.picture5;
	}

	public void setPicture5(String picture5) {
		this.picture5 = picture5;
	}

}