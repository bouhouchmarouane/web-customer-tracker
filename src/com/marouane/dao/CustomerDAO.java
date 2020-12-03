package com.marouane.dao;

import java.util.List;

import com.marouane.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers(String searchValue);

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);
}
