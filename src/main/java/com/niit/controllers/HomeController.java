package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	

@RequestMapping("/login")
public String login(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout,
		Model model){
	if(error!=null)
		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	if(logout!=null)
		model.addAttribute("logout","Loggedout successfully");
	return "login";
	
}

	
}
