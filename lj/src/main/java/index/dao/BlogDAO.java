package main.java.index.dao;

import java.util.List;
import java.util.Map;

import main.java.index.entity.Blog;

public interface BlogDAO {
	
	void insert(Blog blog);
	
	List<Blog> selectBlogList(Map<String, Object> map);
	
	Blog selectbyBlogId(int blogId); 
	
}