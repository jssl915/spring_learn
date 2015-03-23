package main.java.index.entity;

public class BlogComment {
	private int blogCommentId;
	private int blogId;
	private int blogCommentFlag;
	private String visitName;
	private String visitEmail;
	private String visitUrl;
	private String visitContent;
	private String createTime;
	private String updateTime;
	public int getBlogCommentId() {
		return blogCommentId;
	}
	public void setBlogCommentId(int blogCommentId) {
		this.blogCommentId = blogCommentId;
	}
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public int getBlogCommentFlag() {
		return blogCommentFlag;
	}
	public void setBlogCommentFlag(int blogCommentFlag) {
		this.blogCommentFlag = blogCommentFlag;
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
	public String getVisitContent() {
		return visitContent;
	}
	public void setVisitContent(String visitContent) {
		this.visitContent = visitContent;
	}
}
