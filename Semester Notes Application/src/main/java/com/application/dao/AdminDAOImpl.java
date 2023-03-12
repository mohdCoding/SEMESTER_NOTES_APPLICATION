package com.application.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.application.bean.Admin;
import com.application.bean.Semester;
import com.application.bean.Semester1;
import com.application.utility.HibernateUtil;

public class AdminDAOImpl implements AdminDAO {

	private Session session = null;
	private Transaction transaction = null;

	public boolean login(Admin admin) {

		boolean flag = false;

		try {

			session = HibernateUtil.getSession();

			if (!session.getTransaction().isActive())
				transaction = session.beginTransaction();

			if (transaction != null) {
				String selectQuery = "SELECT email, password "
						+ "FROM com.application.bean.Admin WHERE email=:e AND password=:p";
				Query query = session.createQuery(selectQuery);
				query.setParameter("e", admin.getEmail());
				query.setParameter("p", admin.getPassword());

				ArrayList<Object[]> list = (ArrayList) query.getResultList();

				System.out.println(list);
				if (!list.isEmpty())
					flag = true;
			}

		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (session != null)
			session.close();

		return flag;
	}

	public boolean addNotes(Semester semester) {
		boolean flag = false;

		try {

			session = HibernateUtil.getSession();

			if (!session.getTransaction().isActive())
				transaction = session.beginTransaction();

			if (transaction != null) {
				Serializable sid = session.save(semester);

				if (sid != null) {
					System.out.println(sid);
					flag = true;
				}

			}

		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (flag)
				transaction.commit();
			else
				transaction.rollback();

			if (session != null)
				session.close();
		}

		return flag;
	}

	public ArrayList<Semester> getNotes(Integer semesterNo) {

		ArrayList<Semester> notes = new ArrayList<Semester>();

		session = HibernateUtil.getSession();
		Query lists = null;
		String query = "FROM com.application.bean.Semester" + semesterNo;
		List<Semester> semester = null;
		if (session != null) {

			try {

				switch (semesterNo) {
				case 1:
					lists = session.createQuery(query);
					semester = lists.getResultList();
					notes.addAll(semester);
					break;
				case 2:
					lists = session.createQuery(query);
					semester = lists.getResultList();
					notes.addAll(semester);
					break;
				case 3:
					lists = session.createQuery(query);
					semester = lists.getResultList();
					notes.addAll(semester);
					break;
				case 4:
					lists = session.createQuery(query);
					semester = lists.getResultList();
					notes.addAll(semester);
					break;
				case 5:
					lists = session.createQuery(query);
					semester = lists.getResultList();
					notes.addAll(semester);
					break;
				case 6:
					lists = session.createQuery(query);
					semester = lists.getResultList();
					notes.addAll(semester);
					break;
				}

			} catch (HibernateException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}

		return notes;
	}

}
