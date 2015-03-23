package main.java.index.service;


import java.util.List;
import java.util.Map;

import main.java.index.dao.BlogMessageDAO;
import main.java.index.entity.BlogMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogMessageService")
public class BlogMessageServiceImpl implements BlogMessageService {
	@Autowired
	private BlogMessageDAO blogMessageDAO;
	
	public void insert(BlogMessage blogMessage){
		blogMessageDAO.insert(blogMessage);
	}
	
	public List<BlogMessage> selectBlogMessageList(Map<String, Object> map){
		
		return blogMessageDAO.selectBlogMessageList(map);
	}
	
}
