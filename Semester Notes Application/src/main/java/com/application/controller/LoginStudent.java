package com.application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.application.bean.Student;
import com.application.dao.StudentDAO;
import com.application.factory.Factory;

@WebServlet("/LoginStudent")
public class LoginStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer rollno = Integer.parseInt(request.getParameter("rollno"));
		String dob = request.getParameter("dob");
		
		StudentDAO dao = Factory.getStudentDAO();
		HttpSession session = request.getSession();
		if(dao != null) {
			
			String status = dao.login(rollno, dob);
			
			if(status.equals("success")) {
				session.setAttribute("studentLogin", "success");
				RequestDispatcher rd = request.getRequestDispatcher("./view-notes.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("studentLoginFailure", "Invalid rollno or password");
				RequestDispatcher rd = request.getRequestDispatcher("./student-login.jsp");
			    rd.forward(request, response);
			}
			
		}
	}

}
