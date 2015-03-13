package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BookBean;
import model.BookBeanCl;
import model.UserBeanCl;

public class IndexClServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        UserBeanCl ubc = new UserBeanCl();
        String flag = request.getParameter("flag");
        if(flag!=null&&flag.equals("1")){
        	BookBeanCl bbc = new BookBeanCl();
        	ArrayList<BookBean>bookList = bbc.getUsersByPage(1);
        	int pageCount = bbc.getPageCount();
        	request.setAttribute("bookList", bookList);
        	request.setAttribute("pageCount", pageCount);
        	request.setAttribute("currentPage", 1);
    		request.getRequestDispatcher("index.jsp").forward(request,response);
        }
        else if(ubc.checkUser(userName, passWord)){
        	HttpSession session = request.getSession(); 
        	session.setAttribute("userName", userName); 
        	BookBeanCl bbc = new BookBeanCl();
        	ArrayList<BookBean>bookList = bbc.getUsersByPage(1);
        	int pageCount = bbc.getPageCount();
        	request.setAttribute("bookList", bookList);
        	request.setAttribute("pageCount", pageCount);
        	request.setAttribute("currentPage", 1);
    		request.getRequestDispatcher("index.jsp").forward(request,response);
        }else{
        	request.setAttribute("error", 1);
        	request.getRequestDispatcher("login.jsp").forward(request,response);
        }
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request,response);
	}
}
