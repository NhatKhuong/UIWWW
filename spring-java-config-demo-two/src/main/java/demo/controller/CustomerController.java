package demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import demo.entity.Customer;
import demo.service.ICustomerService;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {
	
	@Autowired
	private ICustomerService customerService;
	
	@GetMapping(value = "/list")
	public String listCustomer(Model model) {
		List<Customer> list = customerService.getCustomers();
		model.addAttribute("customers", list);
		
		return "list-customer";
	}
	
	@GetMapping(value = "/show-form-add")
	public String showFormForAdd(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "add-customer";
	}
	
	@PostMapping(value = "/add")
	public String addCustomer(@ModelAttribute("customer") Customer customer) {
		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
	}
	
	@GetMapping(value = "/load")
	public String showFormForUpdate(Model model, @RequestParam("id") int id) {
		Customer customer = customerService.getCustomer(id);
		System.out.println("load: " + customer);
		model.addAttribute("customer", customer);
		return "update-customer";
	}
	
	@PostMapping(value = "/update")
	public String updateCustomer(@ModelAttribute("customer") Customer customer) {
		System.out.println("update: " + customer);
		customerService.updateCustomer(customer);
		return "redirect:/customer/list";
	}
	
	@GetMapping(value = "/delete")
	public String deleteCustomer(@RequestParam("id") int id) {
		customerService.deleteCustomer(id);
	
		return "redirect:/customer/list";
	}
}
