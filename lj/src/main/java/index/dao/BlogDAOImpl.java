package main.java.index.dao;

import java.util.List;
import java.util.Map;

import main.java.index.entity.Blog;
import main.java.util.BaseDao;

import org.springframework.stereotype.Component;

@Component
public class BlogDAOImpl extends BaseDao implements BlogDAO {
	
	public void insert(Blog blog){
		getSqlMapClientTemplate().insert("T_BLOG.insert", blog);
	}
	
	public List<Blog> selectBlogList(Map<String, Object> map){
		
		return getSqlMapClientTemplate().queryForList("T_BLOG.selectBlogList",map);
	}
	
	public Blog selectbyBlogId(int blogId){
		
		return (Blog) getSqlMapClientTemplate().queryForObject("T_BLOG.selectbyBlogId", blogId);
	}
}