package main.java.index.dao;

import java.util.List;
import java.util.Map;

import main.java.index.entity.BlogClassify;
import main.java.util.BaseDao;

import org.springframework.stereotype.Component;

@Component
public class BlogClassifyDAOImpl extends BaseDao implements BlogClassifyDAO {
	
	public void insert(BlogClassify blogClassify){
		
		getSqlMapClientTemplate().insert("T_BLOG_CLASSIFY.insert", blogClassify);
	}
	
	public List<BlogClassify> selectBlogClassifyList(Map<String, Object> map){
		
		return getSqlMapClientTemplate().queryForList("T_BLOG_CLASSIFY.selectBlogClassifyList",map);
	}
	
	public BlogClassify selectbyBlogClassifyId(int blogClassifyId){
		
		return (BlogClassify) getSqlMapClientTemplate().queryForObject("T_BLOG_CLASSIFY.selectbyBlogClassifyId", blogClassifyId);
	}
}