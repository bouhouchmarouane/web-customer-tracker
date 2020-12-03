package com.marouane.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.marouane.entity.Customer;
import com.marouane.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerService service;
	
	@GetMapping("/list")
	public String listCustomers(Model model, @RequestParam(required = false, name = "searchInput") String searchValue) {
		searchValue = searchValue == null ? "" : searchValue;
		List<Customer> customers = service.getCustomers(searchValue);
		model.addAttribute("customers", customers);
		return "list";
	}
	
	@GetMapping("/form")
	public String addCustomerForm(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		
		return "form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		service.saveCustomer(customer);
		
		return "redirect:/customer/list";
	}
	
	@GetMapping("/update")
	public String updateCustomerForm(@RequestParam("customerId") int id, Model model) {
		Customer customer = service.getCustomer(id);
		model.addAttribute("customer", customer);
		
		return "form";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int id) {
		service.deleteCustomer(id);
		
		return "redirect:/customer/list";
	}
}
