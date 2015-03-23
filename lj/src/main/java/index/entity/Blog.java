package main.java.index.entity;

public class Blog {
	private int blogId;
	private int blogFlag;
	private String blogTitleName;
	private String blogSummary;
	private int blogReadNumber;
	private int blogClassify;
	private String blogAuthor;
	private int sort;
	private int recomment;
	private String createTime;
	private String updateTime;
	
	private String blogClassifyName;
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public int getBlogFlag() {
		return blogFlag;
	}
	public void setBlogFlag(int blogFlag) {
		this.blogFlag = blogFlag;
	}
	public String getBlogTitleName() {
		return blogTitleName;
	}
	public void setBlogTitleName(String blogTitleName) {
		this.blogTitleName = blogTitleName;
	}
	public String getBlogSummary() {
		return blogSummary;
	}
	public void setBlogSummary(String blogSummary) {
		this.blogSummary = blogSummary;
	}
	public int getBlogReadNumber() {
		return blogReadNumber;
	}
	public void setBlogReadNumber(int blogReadNumber) {
		this.blogReadNumber = blogReadNumber;
	}
	public int getBlogClassify() {
		return blogClassify;
	}
	public void setBlogClassify(int blogClassify) {
		this.blogClassify = blogClassify;
	}
	public String getBlogAuthor() {
		return blogAuthor;
	}
	public void setBlogAuthor(String blogAuthor) {
		this.blogAuthor = blogAuthor;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public int getRecomment() {
		return recomment;
	}
	public void setRecomment(int recomment) {
		this.recomment = recomment;
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
	public String getBlogClassifyName() {
		return blogClassifyName;
	}
	public void setBlogClassifyName(String blogClassifyName) {
		this.blogClassifyName = blogClassifyName;
	}
}
