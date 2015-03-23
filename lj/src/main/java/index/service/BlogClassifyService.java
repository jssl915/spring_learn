package main.java.index.service;

import java.util.List;
import java.util.Map;

import main.java.index.entity.BlogClassify;

public interface BlogClassifyService {
	
	void insert(BlogClassify blogClassify);
	
	List<BlogClassify> selectBlogClassifyList(Map<String, Object> map);
	
	BlogClassify selectbyBlogClassifyId(int blogClassifyId); 
}
