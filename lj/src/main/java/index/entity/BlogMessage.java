package main.java.index.entity;

public class BlogMessage {
	private int blogMessageId;
	private int blogMessageFlag;
	private String visitName;
	private String visitEmail;
	private String visitUrl;
	private String visitContent;
	private String createTime;
	private String updateTime;
	public int getBlogMessageId() {
		return blogMessageId;
	}
	public void setBlogMessageId(int blogMessageId) {
		this.blogMessageId = blogMessageId;
	}
	public int getBlogMessageFlag() {
		return blogMessageFlag;
	}
	public void setBlogMessageFlag(int blogMessageFlag) {
		this.blogMessageFlag = blogMessageFlag;
	}
	public String getVisitName() {
		return visitName;
	}
	public void setVisitName(String visitName) {
		this.visitName = visitName;
	}
	public String getVisitEmail() {
		return visitEmail;
	}
	public void setVisitEmail(String visitEmail) {
		this.visitEmail = visitEmail;
	}
	public String getVisitUrl() {
		return visitUrl;
	}
	public void setVisitUrl(String visitUrl) {
		this.visitUrl = visitUrl;
	}
	public String getVisitContent() {
		return visitContent;
	}
	public void setVisitContent(String visitContent) {
		this.visitContent = visitContent;
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
