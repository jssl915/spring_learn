package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BookBean;
import model.BookBeanCl;

public class PayClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		 String bookId=request.getParameter("bookId");
		 BookBeanCl bbc=new BookBeanCl();
		 BookBean bb = bbc.getBookBean(Integer.valueOf(bookId));
		 request.setAttribute("book", bb); 
		 request.getRequestDispatcher("pay.jsp").forward(request,response);			 
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request,response);
	}

}
