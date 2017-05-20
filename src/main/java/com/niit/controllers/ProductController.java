package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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

	//input is id 
	//output is product object
	@RequestMapping("/admin/product/editproduct/{id}")
	public String editproduct(@PathVariable int id, Model model)
	{
		Product product=productService.getProductById(id);
		//[product attribute - [4,'Toy','descr','mnat',7800,12,..]
		model.addAttribute("product",product);
		return "productform";
	}
	
	
	
	@RequestMapping(value="admin/product/saveproduct")
	public String saveOrUpdateProduct(@Valid @ModelAttribute(name="product")Product product, BindingResult 	result){
		productService.saveOrUpdateProduct(product);
		MultipartFile image=product.getImage();
		Path path=Paths.get
				("C:/Users/Kuldeep/workspace/FitnessWorld2/src/main/webapp/WEB-INF/resources/images/"+ product.getId()+".png");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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
	

