package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.niit.model.Category;

@Controller
public class CategoryController {
	
		
	public String getCategory(Model model)
	{
		model.addAttribute("category",new Category());
		return "categoryform";
	}

}
