package main.java.index.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.index.entity.Blog;
import main.java.index.entity.BlogClassify;
import main.java.index.entity.BlogComment;
import main.java.index.entity.BlogMessage;
import main.java.index.service.BlogClassifyService;
import main.java.index.service.BlogCommentService;
import main.java.index.service.BlogMessageService;
import main.java.index.service.BlogService;
import net.sf.json.JSONArray;

import org.apache.commons.lang.time.FastDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class MainController{
	@Autowired
	private BlogService blogService;
	@Autowired
	private BlogClassifyService blogClassifyService;
	@Autowired
	private BlogCommentService blogCommentService;
	@Autowired
	private BlogMessageService blogMessageService;
	//主页
	@RequestMapping(value="")
	public String index(HttpServletRequest request, HttpServletResponse response){
		
		return "index";
	}
	
	//博客首页
	@RequestMapping(value="main")
	public String main(HttpServletRequest request, HttpServletResponse response){
		List<Blog>blogList = blogService.selectBlogList(null);
		JSONArray blogListJson = JSONArray.fromObject(blogList);  
		request.setAttribute("blogListJson", blogListJson);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("recomment", 1);
		List<Blog>recommentList = blogService.selectBlogList(map);
		request.setAttribute("recommentListJson", JSONArray.fromObject(recommentList));
		
		List<BlogClassify> blogClassifyList = blogClassifyService.selectBlogClassifyList(null);
		request.setAttribute("blogClassifyListJson", JSONArray.fromObject(blogClassifyList));
		
		return "main";
	}
	
	//博客
	@RequestMapping(value="blog")
	public String blog(HttpServletRequest request, HttpServletResponse response){
		String blogId = request.getParameter("blogId");
		Blog blog = blogService.selectbyBlogId(Integer.valueOf(blogId));
		request.setAttribute("blog", blog);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("blogId", blogId);
		List<BlogComment> blogCommentList = blogCommentService.selectBlogCommentList(map);
		request.setAttribute("blogCommentList", JSONArray.fromObject(blogCommentList));
		return "blog/"+blog.getBlogFlag();
	}
	
	//博客
	@RequestMapping(value="addBlogComment")
	public String addBlogComment(HttpServletRequest request, HttpServletResponse response,@ModelAttribute BlogComment blogComment){
		FastDateFormat df = FastDateFormat.getInstance("yyyy-MM-dd HH:mm:ss");
		String createTime = df.format(new java.util.Date());
		blogComment.setCreateTime(createTime);
		blogComment.setUpdateTime(createTime);
		blogComment.setBlogCommentFlag(1);
		blogCommentService.insert(blogComment);
		int blogId = blogComment.getBlogId();
		Blog blog = blogService.selectbyBlogId(blogId);
		request.setAttribute("blog", blog);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("blogId", blogId);
		List<BlogComment> blogCommentList = blogCommentService.selectBlogCommentList(map);
		request.setAttribute("blogCommentList", JSONArray.fromObject(blogCommentList));
		return "blog/"+blog.getBlogFlag();
	}
	
	
	//推荐
	@RequestMapping(value="recomment")
	public String recomment(HttpServletRequest request, HttpServletResponse response){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("recomment", 1);
		List<Blog>recommentList = blogService.selectBlogList(map);
		request.setAttribute("recommentListJson", JSONArray.fromObject(recommentList));
		
		List<Blog>blogList = blogService.selectBlogList(null);
		JSONArray blogListJson = JSONArray.fromObject(blogList);  
		request.setAttribute("blogListJson", blogListJson);
		
		List<BlogClassify> blogClassifyList = blogClassifyService.selectBlogClassifyList(null);
		request.setAttribute("blogClassifyListJson", JSONArray.fromObject(blogClassifyList));
		return "recomment";
	}
	
	//分类目录
	@RequestMapping(value="classify")
	public String classify(HttpServletRequest request, HttpServletResponse response){
		String blogClassifyId = request.getParameter("blogClassifyId");
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("blogClassify", blogClassifyId);
		List<Blog>blogList = blogService.selectBlogList(map1);
		JSONArray blogListJson = JSONArray.fromObject(blogList);  
		request.setAttribute("blogListJson", blogListJson);
		
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("recomment", 1);
		List<Blog>recommentList = blogService.selectBlogList(map2);
		request.setAttribute("recommentListJson", JSONArray.fromObject(recommentList));
		
		List<BlogClassify> blogClassifyList = blogClassifyService.selectBlogClassifyList(null);
		request.setAttribute("blogClassifyListJson", JSONArray.fromObject(blogClassifyList));
		return "classify";
	}
	
	//留言
	@RequestMapping(value="guestMessage")
	public String guestMessage(HttpServletRequest request, HttpServletResponse response){
		List<BlogMessage> blogMessageList = blogMessageService.selectBlogMessageList(null);
		request.setAttribute("blogMessageList", JSONArray.fromObject(blogMessageList));
		return "guestMessage";
	}
	
	//留言
	@RequestMapping(value="addGuestMessage")
	public String addGuestMessage(HttpServletRequest request, HttpServletResponse response,@ModelAttribute BlogMessage blogMessage){
		FastDateFormat df = FastDateFormat.getInstance("yyyy-MM-dd HH:mm:ss");
		String createTime = df.format(new java.util.Date());
		blogMessage.setCreateTime(createTime);
		blogMessage.setUpdateTime(createTime);
		blogMessage.setBlogMessageFlag(1);
		blogMessageService.insert(blogMessage);
		
		List<BlogMessage> blogMessageList = blogMessageService.selectBlogMessageList(null);
		request.setAttribute("blogMessageList", JSONArray.fromObject(blogMessageList));
		return "guestMessage";
	}
	
	//个人
	@RequestMapping(value="person")
	public String person(HttpServletRequest request, HttpServletResponse response){
		List<Blog>blogList = blogService.selectBlogList(null);
		JSONArray blogListJson = JSONArray.fromObject(blogList);  
		request.setAttribute("blogListJson", blogListJson);
		
		List<BlogClassify> blogClassifyList = blogClassifyService.selectBlogClassifyList(null);
		request.setAttribute("blogClassifyListJson", JSONArray.fromObject(blogClassifyList));
		return "person";
	}
	
	//照片墙
	@RequestMapping(value="photowall")
	public String photowall(HttpServletRequest request, HttpServletResponse response){
    	
		return "photo/photowall";
	}
	
	
	
	
}
