package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Authorities;
import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.Users;

@Repository

public class CustomerDaoImpl implements CustomerDao {
			@Autowired
	private SessionFactory sessionFactory;

	public void saveCustomer(Customer customer) {
		Users users = customer.getUsers();
		users.setEnabled(true);
		// 0,john,123,true
		Authorities authorities = new Authorities();
		authorities.setUsername(users.getUsername());
		authorities.setRole("ROLE_USER");

		Session session = sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(authorities);// Authorities table //insert into authorities
									// values (1,'john','ROLE_USER')

		Cart cart = new Cart();
		cart.setCustomer(customer); // update the value of customer_id column in
									// the cart table.
		customer.setCart(cart);// update the cart_id in customer table
		session.save(customer); // Users,Customer,BillingAddress,ShippingAddress,Cart
		//SESSION.saveorUpdate(Customer)
		session.flush();
		transaction.commit();
		session.close();

	}
	
	@SuppressWarnings("unchecked")
	public List<Customer> getCustomers() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Customer");
		List<Customer> customers = query.list();
		session.close();
		return customers;
	}
	
	 public Customer getCustomerById(int customerId){
	        Session session = sessionFactory.getCurrentSession();
	        return (Customer) session.get(Customer.class, customerId);
	    }

	public Customer getCustomerByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer where username = ?");
        query.setString(0, username);
        return (Customer) query.uniqueResult();
	}

	public void saveOrUpdateCustomer(Customer customer) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction(); 
		session.saveOrUpdate(customer);
		session.flush();
		transaction.commit();
		session.close();	
	}

}
