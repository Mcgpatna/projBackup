package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import models.products;
import models.register;

@Transactional
@Repository 
public class registerDAOImpl {
	
	@Autowired
    SessionFactory sessionFactory;
	
	public void addRegister(register r)
	{
		
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(r);
		System.out.println("Register id is : "+r.getId());
		System.out.println("Registration saved successfully, Register Details="+r);
			
	}
	
}
