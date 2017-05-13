package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value="/home")
	public String getHomePage(){
		return "home";
	}
	
	@RequestMapping(value = "/about")
	public String getAboutPage() {
		return "about";
	}
	
	@RequestMapping(value="/contact")
	public String getContactPage(){
		return "contact_us";
	}
	
	
}
