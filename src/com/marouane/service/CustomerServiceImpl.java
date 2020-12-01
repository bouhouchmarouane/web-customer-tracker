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
	public List<Customer> getCustomers() {
		return dao.getCustomers();
	}

}