package demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.dao.CustomerDaoImp;
import demo.entity.Customer;

@Service
public class CustomerServiceImpl implements ICustomerService{
	@Autowired
	private CustomerDaoImp customerDao;
	
	@Transactional
	@Override
	public List<Customer> getCustomers() {
		
		return customerDao.getCustomers();
	}
	
	@Transactional
	@Override
	public void saveCustomer(Customer customer) {
		
		customerDao.saveCustomer(customer);
	}

	@Transactional
	@Override
	public Customer getCustomer(int id) {
		
		return customerDao.getCustomer(id);
	}
	
	@Transactional
	@Override
	public void deleteCustomer(int id) {

		customerDao.deleteCustomer(id);
		
	}

	@Transactional
	@Override
	public void updateCustomer(Customer customer) {
		customerDao.updateCustomer(customer);
		
	}
	
}
