package entity;

/**
 * Kind entity. @author MyEclipse Persistence Tools
 */

public class Kind implements java.io.Serializable {

	// Fields

	private Integer kindid;
	private String kindname;

	// Constructors

	/** default constructor */
	public Kind() {
	}

	/** minimal constructor */
	public Kind(Integer kindid) {
		this.kindid = kindid;
	}

	/** full constructor */
	public Kind(Integer kindid, String kindname) {
		this.kindid = kindid;
		this.kindname = kindname;
	}

	// Property accessors

	public Integer getKindid() {
		return this.kindid;
	}

	public void setKindid(Integer kindid) {
		this.kindid = kindid;
	}

	public String getKindname() {
		return this.kindname;
	}

	public void setKindname(String kindname) {
		this.kindname = kindname;
	}

}