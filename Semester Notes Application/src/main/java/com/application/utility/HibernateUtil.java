package com.application.utility;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static Configuration cfg = null;
	private static SessionFactory sessionFactory = null;
	private static Session session = null;
	
	private HibernateUtil() {
		
	}
	
	static {
		cfg = new Configuration();
		cfg.configure();
		if(cfg != null)
		   sessionFactory = cfg.buildSessionFactory();
	}
	
	public static Session getSession() {
		if(sessionFactory !=  null)
			session = sessionFactory.openSession();
		return session;
	}
	
}
