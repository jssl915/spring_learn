package main.java.index.dao;

import java.util.List;
import java.util.Map;

import main.java.index.entity.BlogMessage;

public interface BlogMessageDAO {
	
	void insert(BlogMessage blogMessage);
	
	List<BlogMessage> selectBlogMessageList(Map<String, Object> map);
	
}