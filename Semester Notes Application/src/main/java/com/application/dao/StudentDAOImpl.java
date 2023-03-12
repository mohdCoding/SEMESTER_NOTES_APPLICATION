package com.application.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.application.bean.Student;
import com.application.utility.HibernateUtil;

public class StudentDAOImpl implements StudentDAO {

	private Session session;
	private Transaction transaction;

	@Override
	public String register(Student student) {

		String status = "failure";

		try {
			session = HibernateUtil.getSession();

			if (session != null)
				transaction = session.beginTransaction();

			if (transaction != null) {
				session.saveOrUpdate(student);
				status = "success";
			}

		} catch (HibernateException e) {
			status = "failure";
			e.printStackTrace();
		} catch (Exception e) {
			status = "failure";
			e.printStackTrace();
		} finally {

			if (status.equals("success")) {
				transaction.commit();
			} else {
				transaction.rollback();
			}

		}

		return status;
	
	}
	
	public String login(Integer rollno, String dob) {
		Session session = null;
		String status = "failure";
		String query = "FROM com.application.bean.Student WHERE rollno = ?1 AND dob = ?2" ; 
		try {
			
			session = HibernateUtil.getSession();
			
			if(session != null) {
				Query data = session.createQuery(query);
				data.setParameter(1, rollno);
				data.setParameter(2, dob);
				List<String> student = data.getResultList();
				
				if(!student.isEmpty()) {
					status = "success";
				} else {
					status = "failure";
				}
				
			}
			
		} catch(HibernateException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}

}
