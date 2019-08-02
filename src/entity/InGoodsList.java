package entity;
import java.util.List;

public class InGoodsList {
	private List<String> gid;
	private List<String> picture;


	public List<String> getGid() {
		return gid;
	}


	public void setGid(List<String> gid) {
		this.gid = gid;
	}


	public List<String> getPicture() {
		return picture;
	}


	public void setPicture(List<String> picture) {
		this.picture = picture;
	}


	public InGoodsList(List<String> gid, List<String> picture) {
		super();
		this.gid = gid;
		this.picture = picture;
	}
}
