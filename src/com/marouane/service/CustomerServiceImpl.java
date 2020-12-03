package com.marouane.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.marouane.dao.CustomerDAO;
import com.marouane.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO dao;
	
	@Override
	@Transactional
	public List<Customer> getCustomers(String searchValue) {
		return dao.getCustomers(searchValue);
	}

	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		dao.saveCustomer(customer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int id) {
		return dao.getCustomer(id);
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		dao.deleteCustomer(id);
	}

}
