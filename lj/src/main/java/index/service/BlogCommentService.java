package main.java.index.service;

import java.util.List;
import java.util.Map;

import main.java.index.entity.BlogComment;

public interface BlogCommentService {
	
	void insert(BlogComment blogComment);
	
	List<BlogComment> selectBlogCommentList(Map<String, Object> map);
	
}
