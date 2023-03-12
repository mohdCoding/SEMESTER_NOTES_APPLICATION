package com.application.controller;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.application.bean.*;
import com.application.dao.AdminDAOImpl;
import com.application.factory.Factory;

@WebServlet("/AddNotes")
@MultipartConfig
public class AddNotes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FileOutputStream fos = null;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Integer semesterNo = Integer.parseInt(request.getParameter("semester"));
		Integer subjectCode = Integer.parseInt(request.getParameter("subject-code"));
		String subjectName = request.getParameter("subject-name");
		Part filePart = request.getPart("file-upload");
		String fileName = filePart.getSubmittedFileName();
		InputStream fileContent = filePart.getInputStream();
		byte[] buffer = fileContent.readAllBytes();
		File file = null;
		AdminDAOImpl adminDao = null;
		String path = "";
		
	
		HttpSession session = request.getSession();
	
		RequestDispatcher rd = null;

		try {

			switch (semesterNo) {
			case 1:
				Semester1 semester1 = new Semester1();
				semester1.setSubjectCode(subjectCode);
				semester1.setSubjectName(subjectName);
				semester1.setFile(buffer);

				path = "sem1/" + fileName;
				
				semester1.setFileLocation(path);
				
				
				adminDao = Factory.getAdminDAO();

				if (adminDao != null) {

					boolean flag = adminDao.addNotes(semester1);

					if (flag) {
						String folderLocation = "E:\\My Final Year Project\\Semester Notes Application\\src\\main\\webapp\\sem1\\" + fileName;
						file = new File(folderLocation);
						file.createNewFile();

						FileOutputStream fos = new FileOutputStream(file);
						fos.write(buffer);

					    rd = request.getRequestDispatcher("./admin-access.jsp");
					    request.setAttribute("flag", flag);
					    rd.forward(request, response);
					} 
						 
				}

				break;
			case 2:
				Semester2 semester2 = new Semester2();
				semester2.setSubjectCode(subjectCode);
				semester2.setSubjectName(subjectName);
				semester2.setFile(buffer);

				path = "sem2/" + fileName;
				
				semester2.setFileLocation(path);
				
			

				adminDao = Factory.getAdminDAO();

				if (adminDao != null) {

					boolean flag = adminDao.addNotes(semester2);

					if (flag) {
						
						String folderLocation = "E:\\My Final Year Project\\Semester Notes Application\\src\\main\\webapp\\sem2\\" + fileName;
						file = new File(folderLocation);
						file.createNewFile();

						FileOutputStream fos = new FileOutputStream(file);
						fos.write(buffer);
						fos.flush();
					    rd = request.getRequestDispatcher("./admin-access.jsp");
					    request.setAttribute("flag", flag);
					    rd.forward(request, response);
					}
				}

				break;
			case 3:
				Semester3 semester3 = new Semester3();
				semester3.setSubjectCode(subjectCode);
				semester3.setSubjectName(subjectName);
				semester3.setFile(buffer);

				path = "sem3/" + fileName;
				semester3.setFileLocation(path);
				
				

				adminDao = Factory.getAdminDAO();

				if (adminDao != null) {

					boolean flag = adminDao.addNotes(semester3);

					if (flag) {
						String folderLocation = "E:\\My Final Year Project\\Semester Notes Application\\src\\main\\webapp\\sem3\\" + fileName;
						file = new File(folderLocation);
						file.createNewFile();

						FileOutputStream fos = new FileOutputStream(file);
						fos.write(buffer);
						fos.flush();
					    rd = request.getRequestDispatcher("./admin-access.jsp");
					    request.setAttribute("flag", flag);
					    rd.forward(request, response);
					}
				}

				break;
			case 4:
				Semester4 semester4 = new Semester4();
				semester4.setSubjectCode(subjectCode);
				semester4.setSubjectName(subjectName);
				semester4.setFile(buffer);
				
				path = "sem4/" + fileName;
				semester4.setFileLocation(path);
				

				adminDao = Factory.getAdminDAO();

				if (adminDao != null) {

					boolean flag = adminDao.addNotes(semester4);

					if (flag) {
						String folderLocation = "E:\\My Final Year Project\\Semester Notes Application\\src\\main\\webapp\\sem4\\" + fileName;
						file = new File(folderLocation);
						file.createNewFile();

						FileOutputStream fos = new FileOutputStream(file);
						fos.write(buffer);
						fos.flush();
					    rd = request.getRequestDispatcher("./admin-access.jsp");
					    request.setAttribute("flag", flag);
					    rd.forward(request, response);
					}
				}
				break;
			case 5:
				Semester5 semester5 = new Semester5();
				semester5.setSubjectCode(subjectCode);
				semester5.setSubjectName(subjectName);
				semester5.setFile(buffer);
				
				path = "sem5/" + fileName;
				semester5.setFileLocation(path);
			

				adminDao = Factory.getAdminDAO();

				if (adminDao != null) {

					boolean flag = adminDao.addNotes(semester5);

					if (flag) {
						String folderLocation = "E:\\My Final Year Project\\Semester Notes Application\\src\\main\\webapp\\sem5\\" + fileName;
						file = new File(folderLocation);
						file.createNewFile();

						FileOutputStream fos = new FileOutputStream(file);
						fos.write(buffer);
						fos.flush();
					    rd = request.getRequestDispatcher("./admin-access.jsp");
					    request.setAttribute("flag", flag);
					    rd.forward(request, response);
					}
				}
				break;
			case 6:
				Semester6 semester6 = new Semester6();
				semester6.setSubjectCode(subjectCode);
				semester6.setSubjectName(subjectName);
				semester6.setFile(buffer);
				
			    path = "sem6/" + fileName;
			    semester6.setFileLocation(path);
				

				adminDao = Factory.getAdminDAO();

				if (adminDao != null) {

					boolean flag = adminDao.addNotes(semester6);

					if (flag) {
						String folderLocation = "E:\\My Final Year Project\\Semester Notes Application\\src\\main\\webapp\\sem6\\" + fileName;
						file = new File(folderLocation);
						file.createNewFile();

						FileOutputStream fos = new FileOutputStream(file);
						fos.write(buffer);
						fos.flush();
					    rd = request.getRequestDispatcher("./admin-access.jsp");
					    request.setAttribute("flag", flag);
					    rd.forward(request, response);
					}
				}

				break;
			}
		} catch (IOException e) {
			e.printStackTrace();
		} 
			
		
			
		

	}

}
