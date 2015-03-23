package main.java.index.dao;

import java.util.List;
import java.util.Map;

import main.java.index.entity.BlogComment;
import main.java.util.BaseDao;

import org.springframework.stereotype.Component;

@Component
public class BlogCommentDAOImpl extends BaseDao implements BlogCommentDAO {
	
	public void insert(BlogComment blogComment){
		getSqlMapClientTemplate().insert("T_BLOG_COMMENT.insert", blogComment);
	}
	
	public List<BlogComment> selectBlogCommentList(Map<String, Object> map){
		
		return getSqlMapClientTemplate().queryForList("T_BLOG_COMMENT.selectBlogCommentList",map);
	}
}