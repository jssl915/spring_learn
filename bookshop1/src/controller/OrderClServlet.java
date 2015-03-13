package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BookBean;
import model.BookBeanCl;
import model.OrderBeanCl;

public class OrderClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		 String bookId=request.getParameter("bookId");
//		 String bookName=request.getParameter("bookName");
		 HttpSession session = request.getSession(); 
		 String userName= session.getAttribute("userName").toString();
//		 String bookPrice=request.getParameter("bookPrice");
//		 String buyNum=request.getParameter("buyNum");
		 String conName=request.getParameter("conName");
		 String conPhone=request.getParameter("conPhone");
		 String conAddress=request.getParameter("conAddress");
		 String conZipcode=request.getParameter("conZipcode");
		 BookBeanCl bbc=new BookBeanCl();
		 BookBean bb =bbc.getBookBean(Integer.valueOf(bookId));
		 OrderBeanCl obc = new OrderBeanCl();
		 
		 if(obc.addOrder(bb.getBookName(),userName,bb.getBookPrice().toString(),1+"",conName,conPhone,conAddress,conZipcode)){
				request.getRequestDispatcher("addorderSuc.jsp").forward(request,response);
		 }else{
			 request.getRequestDispatcher("err.jsp").forward(request,response);			 
		 }	
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request,response);
	}

}
