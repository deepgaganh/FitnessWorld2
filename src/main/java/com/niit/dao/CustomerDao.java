package com.niit.dao;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerDao {

	void saveCustomer(Customer customer);
	Customer getCustomerById(int customerId);
	List<Customer> getCustomers(); // duplicate username and email  
	Customer getCustomerByUsername(String username);
	public void saveOrUpdateCustomer(Customer customer);
}
