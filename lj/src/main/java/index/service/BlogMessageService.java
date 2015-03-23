package main.java.index.service;

import java.util.List;
import java.util.Map;

import main.java.index.entity.BlogMessage;

public interface BlogMessageService {
	
	void insert(BlogMessage blogMessage);
	
	List<BlogMessage> selectBlogMessageList(Map<String, Object> map);
	
}
