package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.CustomerOrder;

@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao{
			@Autowired
	private SessionFactory sessionFactory;
	
	public void addCustomerOrder(CustomerOrder customerOrder) {
		 Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(customerOrder);
	        session.flush();
	}

}
