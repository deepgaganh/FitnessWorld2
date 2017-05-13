package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
public class ProductController {
			@Autowired
	private ProductService productService;
	@RequestMapping(value="admin/product/productform")
	public String getProduct(Model model){
		model.addAttribute("product",new Product());		
		return "productform";
		
	}
	@RequestMapping(value="admin/product/saveproduct")
	public String saveProduct(@ModelAttribute(name="product")Product product){
		productService.saveProduct(product);
		return "redirect:/all/product/productlist";
	}
	@RequestMapping("/all/product/productlist")
	public String getAllProducts(Model model){
		List<Product> products=productService.getAllProducts();
		for(Product p:products){
			System.out.println(p.getName());
			System.out.println(p.getPrice());
		}
		model.addAttribute("products",products);
		return "productlist";
	}
	// http://localhost:8080/proje/all/product/viewproduct/1
	@RequestMapping("/all/product/viewproduct/{id}")
	public String viewProduct(@PathVariable int id,Model model){
		Product product=productService.getProductById(id);
		model.addAttribute("product",product);
		return "viewproduct";
	}
	@RequestMapping("/admin/product/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id){
		productService.deleteProduct(id);
		return "redirect:/all/product/productlist";
	}
}
	

