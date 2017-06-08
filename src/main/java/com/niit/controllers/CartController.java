package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Controller
public class CartController {
			@Autowired
	private CustomerService customerService;

			@RequestMapping(value="/customer/cart")
	public String getCart(@AuthenticationPrincipal User activeUser){
		Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        int cartId = customer.getCart().getId();

        return "redirect:/customer/cart/" + cartId;
	}
			
	public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model){
		model.addAttribute("cartId", cartId);

        return "cart";
	}
			
}
