package com.application.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.application.bean.Semester;
import com.application.dao.AdminDAO;
import com.application.factory.Factory;


@WebServlet("/FetchNotes")
public class FetchNotes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Integer semesterNo =Integer.parseInt(request.getParameter("semesterNo"));
		
	    AdminDAO dao = Factory.getAdminDAO();
		
		ArrayList<Semester> notes = dao.getNotes(semesterNo);
	   	
		HttpSession session = request.getSession();
		
		
		RequestDispatcher rd = null;
		
		switch(semesterNo) {
		case 1:
			rd = request.getRequestDispatcher("./semester1.jsp");
			session.setAttribute("notes1", notes);
			rd.forward(request, response);
			break;
		case 2:
			rd = request.getRequestDispatcher("./semester2.jsp");
			session.setAttribute("notes2", notes);
			rd.forward(request, response);
			break;
		case 3:
			rd = request.getRequestDispatcher("./semester3.jsp");
			session.setAttribute("notes3", notes);
			rd.forward(request, response);
			break;
		case 4:
			rd = request.getRequestDispatcher("./semester4.jsp");
			session.setAttribute("notes4", notes);
			rd.forward(request, response);
			break;
		case 5:
			rd = request.getRequestDispatcher("./semester5.jsp");
			session.setAttribute("notes5", notes);
			rd.forward(request, response);
			break;
		case 6:
			rd = request.getRequestDispatcher("./semester6.jsp");
			session.setAttribute("notes6", notes);
			rd.forward(request, response);
			break;
		default:
			
		}
		
	}

}
