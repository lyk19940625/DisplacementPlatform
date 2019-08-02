package entity;

/**
 * Transaction entity. @author MyEclipse Persistence Tools
 */

public class Transaction implements java.io.Serializable {

	// Fields

	private Integer tid;
	private Integer gid;
	private String inuid;
	private String outuid;
	private String time;
	private String evaluate;
	private Integer count;
	private String deliver;
	private Integer price;

	// Constructors

	/** default constructor */
	public Transaction() {
	}

	/** full constructor */
	public Transaction(Integer gid, String inuid, String outuid, String time,
			String evaluate, Integer count, String deliver, Integer price) {
		this.gid = gid;
		this.inuid = inuid;
		this.outuid = outuid;
		this.time = time;
		this.evaluate = evaluate;
		this.count = count;
		this.deliver = deliver;
		this.price = price;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public String getInuid() {
		return this.inuid;
	}

	public void setInuid(String inuid) {
		this.inuid = inuid;
	}

	public String getOutuid() {
		return this.outuid;
	}

	public void setOutuid(String outuid) {
		this.outuid = outuid;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getEvaluate() {
		return this.evaluate;
	}

	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getDeliver() {
		return this.deliver;
	}

	public void setDeliver(String deliver) {
		this.deliver = deliver;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

}