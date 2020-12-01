package com.marouane.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.marouane.dao.CustomerDAO;
import com.marouane.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerDAO dao;
	
	@GetMapping("/list")
	public String listCustomers(Model model) {
		List<Customer> customers = dao.getCustomers();
		model.addAttribute("customers", customers);
		return "list";
	}
}
