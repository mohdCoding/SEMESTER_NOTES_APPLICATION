package com.application.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.application.bean.Student;
import com.application.dao.StudentDAO;
import com.application.factory.Factory;


@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private StudentDAO dao = null;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		String name = request.getParameter("name");
		Integer rollno = Integer.parseInt(request.getParameter("rollno"));
		String dob = request.getParameter("dob");
		String status = "";
		
		Student student = new Student();
		student.setName(name);
		student.setRollno(rollno);
		student.setDob(dob);
		
		dao = Factory.getStudentDAO();
		
		if(dao != null) {
			status = dao.register(student);
			
			if(status.equalsIgnoreCase("success")) {
			   
				RequestDispatcher rd = request.getRequestDispatcher("./student-login.jsp");
				rd.forward(request, response);
				
			} else {
				request.setAttribute("registerFailure", "Registration Failure");
				RequestDispatcher rd=request.getRequestDispatcher("./student-register.jsp");
				rd.forward(request, response);
			}
			
		}
	    
	}

}
