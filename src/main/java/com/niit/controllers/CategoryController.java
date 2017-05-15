package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Category;
import com.niit.service.CategoryService;

@Controller
public class CategoryController {

			@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="admin/category/categoryform")
	public String getCategory(Model model) {
		model.addAttribute("category", new Category());
		return "categoryform";
	}
	
	@RequestMapping(value="admin/product/saveproduct")
	public String saveCategory(@ModelAttribute(name = "category") Category category) {
		categoryService.saveCategory(category);
		return "redirect:/all/category/categorylist";
	}
	
	@RequestMapping(value="/all/category/categorylist")
	public String getAllCategories(Model model){
		List<Category> categories=categoryService.getAllCategories();
		model.addAttribute("categories",categories);
		return "categorieslist";
	}
	
	@RequestMapping(value="/admin/product/deleteproduct/{cid}")
	public String deleteCategory(@PathVariable int cid){
		categoryService.deleteCategory(cid);		
		return "redirect:/all/category/categorylist";
	}
}
