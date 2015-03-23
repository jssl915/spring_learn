package main.java.index.entity;

public class BlogClassify {
	private int blogClassifyId;
	private String blogClassifyName;
	private int sort;
	private String createTime;
	private String updateTime;
	public int getBlogClassifyId() {
		return blogClassifyId;
	}
	public void setBlogClassifyId(int blogClassifyId) {
		this.blogClassifyId = blogClassifyId;
	}
	public String getBlogClassifyName() {
		return blogClassifyName;
	}
	public void setBlogClassifyName(String blogClassifyName) {
		this.blogClassifyName = blogClassifyName;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
}
