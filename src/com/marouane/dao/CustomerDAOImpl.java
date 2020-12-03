package com.marouane.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.marouane.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Customer> getCustomers(String searchValue) {
		Session session = sessionFactory.getCurrentSession();
		Query<Customer> query = session.createQuery("from Customer c "
				+ "where c.firstName like :searchValue "
				+ "or c.lastName like :searchValue "
				+ "or c.email like :searchValue "
				+ "order by first_name", Customer.class);
		query.setParameter("searchValue", "%" + searchValue + "%");
		return query.getResultList();
	}

	@Override
	public void saveCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
	}

	@Override
	public Customer getCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Customer.class, id);
	}

	@Override
	public void deleteCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class, id); 
		session.delete(customer);
	}

}
