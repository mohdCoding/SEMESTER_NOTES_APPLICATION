package com.application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.application.bean.Admin;
import com.application.dao.AdminDAOImpl;
import com.application.factory.Factory;


@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AdminDAOImpl adminDao = null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		adminDao = Factory.getAdminDAO();
		Admin admin = new Admin();
		admin.setEmail(email);
		admin.setPassword(password);
		HttpSession session = request.getSession();
		if(adminDao != null) {
			boolean flag = adminDao.login(admin);
			
			if(flag) {
				RequestDispatcher rd = request.getRequestDispatcher("./admin-access.jsp");
				session.setAttribute("admin-login", "Login Successfull");
				System.out.println(flag);
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("./admin-login.jsp");
				session.setAttribute("admin-login", "Invalid email or password");
				System.out.println(flag);
				rd.forward(request, response);
			}
		}
		
	}

}
