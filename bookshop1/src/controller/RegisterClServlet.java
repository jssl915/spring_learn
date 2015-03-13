package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserBeanCl;

public class RegisterClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		 String userName=request.getParameter("userName");		 
		 String passWord=request.getParameter("passWord");
		 String userPhone=request.getParameter("userPhone");
		 String userAddress=request.getParameter("userAddress");
		 UserBeanCl ubc=new UserBeanCl();
		 if(ubc.addUser(userName,passWord,userPhone,userAddress)){
				request.getRequestDispatcher("registerSuc.jsp").forward(request,response);
		 }else{
			 request.getRequestDispatcher("err.jsp").forward(request,response);			 
		 }	
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request,response);
	}

}
