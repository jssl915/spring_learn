package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BookBean;
import model.BookBeanCl;

public class PageClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int page = Integer.valueOf(request.getParameter("page"));
		BookBeanCl bbc = new BookBeanCl();
		ArrayList<BookBean>bookList = bbc.getUsersByPage(page);
    	int pageCount = bbc.getPageCount();
    	request.setAttribute("bookList", bookList);
    	request.setAttribute("pageCount", pageCount);
    	request.setAttribute("currentPage", page);
    	request.getRequestDispatcher("index.jsp").forward(request,response);
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request,response);
	}

}
