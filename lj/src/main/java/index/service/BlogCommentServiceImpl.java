package main.java.index.service;


import java.util.List;
import java.util.Map;

import main.java.index.dao.BlogCommentDAO;
import main.java.index.entity.BlogComment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogCommentService")
public class BlogCommentServiceImpl implements BlogCommentService {
	@Autowired
	private BlogCommentDAO blogCommentDAO;
	
	public void insert(BlogComment BlogComment){
		blogCommentDAO.insert(BlogComment);
	}
	
	public List<BlogComment> selectBlogCommentList(Map<String, Object> map){
		
		return blogCommentDAO.selectBlogCommentList(map);
	}
	
}
