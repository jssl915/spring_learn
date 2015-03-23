package main.java.index.dao;

import java.util.List;
import java.util.Map;

import main.java.index.entity.BlogComment;

public interface BlogCommentDAO {
	
	void insert(BlogComment blogComment);
	
	List<BlogComment> selectBlogCommentList(Map<String, Object> map);
	
}