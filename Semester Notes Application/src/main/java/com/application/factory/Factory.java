package com.application.factory;

import com.application.dao.*;

public class Factory {

	private Factory() {

	}

	private static AdminDAOImpl adminDAOImpl = null;
	private static StudentDAOImpl studentDAOImpl = null;
	private static StaffDAOImpl staffDAOImpl = null;

	public static AdminDAOImpl getAdminDAO() {

		if (adminDAOImpl == null)
			return adminDAOImpl = new AdminDAOImpl();
		else
			return adminDAOImpl;
	}

	public static StudentDAOImpl getStudentDAO() {

		if (studentDAOImpl == null)
			return studentDAOImpl = new StudentDAOImpl();
		else
			return studentDAOImpl;

	}

	public static StaffDAOImpl getStaffDAO() {

		if (staffDAOImpl == null)
			return staffDAOImpl = new StaffDAOImpl();
		else
			return staffDAOImpl;
	}
}
