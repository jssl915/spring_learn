package main.java.index.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/work")
public class WorkController{
	
	//瀑布墙
	@RequestMapping(value="waterfall")
	public String index(HttpServletRequest request, HttpServletResponse response){
    	
		return "work/waterfall";
	}
}
