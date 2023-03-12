package com.application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("user");
		
		HttpSession session = request.getSession();
		
		if(user.equals("student")) {
			 session.removeAttribute("studentLogin");
			 RequestDispatcher rd = request.getRequestDispatcher("./index.jsp");
			 rd.forward(request, response);
		} else if(user.equals("admin")) {
			 session.removeAttribute("admin-login");
			 RequestDispatcher rd = request.getRequestDispatcher("./index.jsp");
			 rd.forward(request, response);
		} else if(user.equals("staff")) {
			 session.removeAttribute("staffLogin");
			 RequestDispatcher rd = request.getRequestDispatcher("./index.jsp");
			 rd.forward(request, response);
		}
			
		
	}

}
