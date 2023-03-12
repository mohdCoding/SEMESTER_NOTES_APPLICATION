package com.application.dao;

import com.application.bean.Staff;

public interface StaffDAO {

	public String register(Staff staff);
	
	public String login(String email, String password);
	
}
