package main.java.index.service;


import java.util.List;
import java.util.Map;

import main.java.index.dao.BlogDAO;
import main.java.index.entity.Blog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogService")
public class BlogServiceImpl implements BlogService {
	@Autowired
	private BlogDAO blogDAO;
	
	public void insert(Blog blog){
		blogDAO.insert(blog);
	}
	
	public List<Blog> selectBlogList(Map<String, Object> map){
		
		return blogDAO.selectBlogList(map);
	}
	
	public Blog selectbyBlogId(int blogId){
		
		return blogDAO.selectbyBlogId(blogId);
	}
}
