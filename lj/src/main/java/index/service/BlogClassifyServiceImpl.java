package main.java.index.service;


import java.util.List;
import java.util.Map;

import main.java.index.dao.BlogClassifyDAO;
import main.java.index.entity.BlogClassify;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogClassifyService")
public class BlogClassifyServiceImpl implements BlogClassifyService {
	@Autowired
	private BlogClassifyDAO blogClassifyDAO;
	
	public void insert(BlogClassify blogClassify){
		blogClassifyDAO.insert(blogClassify);
	}
	
	public List<BlogClassify> selectBlogClassifyList(Map<String, Object> map){
		
		return blogClassifyDAO.selectBlogClassifyList(map);
	}
	
	public BlogClassify selectbyBlogClassifyId(int blogClassifyId){
		
		return blogClassifyDAO.selectbyBlogClassifyId(blogClassifyId);
	}
}
