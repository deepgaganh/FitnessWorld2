package com.niit.service;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerService {
	
	void saveCustomer(Customer customer);
    Customer getCustomerById(int customerId);
	List<Customer> getCustomers();
	Customer getCustomerByUsername(String username);
	
}
