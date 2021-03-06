package com.marouane.service;

import java.util.List;

import com.marouane.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers(String searchValue);

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);
}
