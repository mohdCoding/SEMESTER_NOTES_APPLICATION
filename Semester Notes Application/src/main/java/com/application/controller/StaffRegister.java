package com.application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.application.bean.Staff;
import com.application.dao.StaffDAO;
import com.application.factory.Factory;


@WebServlet("/StaffRegister")
public class StaffRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password =  request.getParameter("password");
		
	    Staff staff = new Staff();
		staff.setName(name);
		staff.setEmail(email);
		staff.setPassword(password);
		
		StaffDAO dao = Factory.getStaffDAO();
		
		if(dao != null) {
			
			String status = dao.register(staff);
			
			if(status.equals("success")) {
				RequestDispatcher rd = request.getRequestDispatcher("./staff-login.jsp");
				rd.forward(request, response);
			} else {
				request.getSession().setAttribute("staffRegister", "Failed to Register");
				RequestDispatcher rd = request.getRequestDispatcher("./staff-register.jsp");
				rd.forward(request, response);
			}
			
		}
		
	}

}
