package demo.service;

import java.util.List;

import demo.entity.Customer;

public interface ICustomerService {
	public List<Customer> getCustomers();
	public void saveCustomer(Customer customer);
	public void updateCustomer(Customer customer);
	public Customer getCustomer(int id);
	public void deleteCustomer(int id); 
}
