package com.niit.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
@Service
public class CutomerServiceImpl implements CustomerService{
			@Autowired
	private CustomerDao customerDao;
	public void saveCustomer(Customer customer) {
			customerDao.saveOrUpdateCustomer(customer);
			
	}
	public Customer getCustomerById(int customerId) {
		return customerDao.getCustomerById(customerId);
	}

	public List<Customer> getCustomers() {
		return customerDao.getCustomers();
	}

	public Customer getCustomerByUsername(String username) {
		  return customerDao.getCustomerByUsername(username);
	}


}
