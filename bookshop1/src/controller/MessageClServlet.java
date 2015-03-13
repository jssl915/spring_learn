package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MessageBeanCl;
import model.MessageBean;

public class MessageClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		//HttpSession session = request.getSession();
		//String messTitle= session.getAttribute("messTitle").toString();
		 String messTitle=request.getParameter("messTitle");		 
		 String messAuthor=request.getParameter("messAuthor");
		 String messContent=request.getParameter("messContent");
		 MessageBeanCl mbc=new MessageBeanCl();
		 if(mbc.addMessage(messTitle,messAuthor,messContent)){
				request.getRequestDispatcher("addmessageSuc.jsp").forward(request,response);
		 }else{
			 request.getRequestDispatcher("err.jsp").forward(request,response);			 
		 }	
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request,response);
	}

}
