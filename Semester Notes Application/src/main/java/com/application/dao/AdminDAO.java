package com.application.dao;

import java.util.ArrayList;

import com.application.bean.Admin;
import com.application.bean.Semester;

public interface AdminDAO {
	
	public boolean login(Admin admin);
	
	public boolean addNotes(Semester semester);
	
	public ArrayList<Semester> getNotes(Integer SemesterNo);

}
