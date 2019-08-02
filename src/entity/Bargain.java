package entity;

/**
 * Bargain entity. @author MyEclipse Persistence Tools
 */

public class Bargain implements java.io.Serializable {

	// Fields

	private Integer bid;
	private String uid;
	private String content;
	private Integer gid;

	// Constructors

	/** default constructor */
	public Bargain() {
	}

	/** full constructor */
	public Bargain(String uid, String content, Integer gid) {
		this.uid = uid;
		this.content = content;
		this.gid = gid;
	}

	// Property accessors

	public Integer getBid() {
		return this.bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public String getUid() {
		return this.uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

}