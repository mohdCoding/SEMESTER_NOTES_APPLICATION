package com.application.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.application.bean.Staff;
import com.application.utility.HibernateUtil;

public class StaffDAOImpl implements StaffDAO {

	private Session session = null;
	private Transaction transaction = null;

	@Override
	public String register(Staff staff) {
		String status = "failure";

		try {

			session = HibernateUtil.getSession();

			if (session != null)
				transaction = session.beginTransaction();

			if (transaction != null) {
				session.saveOrUpdate(staff);
				status = "success";
			}

		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (status.equalsIgnoreCase("success"))
				transaction.commit();
			else
				transaction.rollback();
		}

		return status;
	}

	@Override
	public String login(String email, String password) {
		String status = "failure";
		String selectQuery = "FROM com.application.bean.Staff WHERE email=?1 AND password=?2";

		try {

			session = HibernateUtil.getSession();
			if (session != null) {

				Query result = session.createQuery(selectQuery);
				result.setParameter(1, email);
				result.setParameter(2, password);

				List<String> list = result.list();

				if (!list.isEmpty()) {
					status = "success";
				} else {
					status = "failure";
				}

			}
		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}
