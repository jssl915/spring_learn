package main.java.index.dao;

import java.util.List;
import java.util.Map;

import main.java.index.entity.BlogMessage;
import main.java.util.BaseDao;

import org.springframework.stereotype.Component;

@Component
public class BlogMessageDAOImpl extends BaseDao implements BlogMessageDAO {
	
	public void insert(BlogMessage blogMessage){
		getSqlMapClientTemplate().insert("T_BLOG_MESSAGE.insert", blogMessage);
	}
	
	public List<BlogMessage> selectBlogMessageList(Map<String, Object> map){
		
		return getSqlMapClientTemplate().queryForList("T_BLOG_MESSAGE.selectBlogMessageList",map);
	}
}