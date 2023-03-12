package com.application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.application.dao.StaffDAOImpl;
import com.application.factory.Factory;


@WebServlet("/StaffLogin")
public class StaffLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     public StaffLogin() {
    	 
     }
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		StaffDAOImpl dao = Factory.getStaffDAO();
		
		if(dao != null) {
			String status = dao.login(email, password);
			
			if(status.equalsIgnoreCase("success")) {
				session.setAttribute("staffLogin", "success");
				RequestDispatcher rd = request.getRequestDispatcher("./view-notes.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("staffLoginFailure", "Invalid email or password");
				RequestDispatcher rd = request.getRequestDispatcher("./staff-login.jsp");
				rd.forward(request, response);
			}
				
		}
	}

}
