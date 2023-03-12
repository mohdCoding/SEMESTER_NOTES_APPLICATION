package com.application.dao;

import com.application.bean.Student;

public interface StudentDAO {

	public String register(Student student);
	
	public String login(Integer rollno, String dob);
	
}
