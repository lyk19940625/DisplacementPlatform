package entity;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String uid;
	private String pwd;
	private String uname;
	private String tel;
	private String sex;
	private String address;
	private String school;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String uid) {
		this.uid = uid;
	}

	/** full constructor */
	public User(String uid, String pwd, String uname, String tel, String sex,
			String address, String school) {
		this.uid = uid;
		this.pwd = pwd;
		this.uname = uname;
		this.tel = tel;
		this.sex = sex;
		this.address = address;
		this.school = school;
	}

	// Property accessors

	public String getUid() {
		return this.uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSchool() {
		return this.school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

}