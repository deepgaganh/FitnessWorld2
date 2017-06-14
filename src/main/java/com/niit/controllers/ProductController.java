package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CustomerDao;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private CustomerDao custemerDao;

	/* To get New Product form */
	@RequestMapping(value = "admin/product/productform")
	public String getProduct(Model model) {
		model.addAttribute("product", new Product());
		List<Category> categoryDetails = categoryService.getAllCategories();
		model.addAttribute("categorydetails", categoryDetails);
		return "productform";

	}

	// input is id
	// output is product object
	/* To edit the product */
	@RequestMapping("/admin/product/editproduct/{id}")
	public String editproduct(@PathVariable int id, Model model) {
		Product product = productService.getProductById(id);
		// [product attribute - [4,'Toy','descr','mnat',7800,12,..]
		model.addAttribute("product", product);
		List<Category> categoryDetails = categoryService.getAllCategories();
		model.addAttribute("categorydetails", categoryDetails);
		return "productform";
	}

	/* To save the Product and update */
	@RequestMapping(value = "admin/product/saveproduct")
	public String saveOrUpdateProduct(@Valid @ModelAttribute(name = "product") Product product, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("HAS ERRORS");
			return "productform";
		}
		System.out.println("After Validation");
		productService.saveOrUpdateProduct(product);

		MultipartFile image = product.getImage();
		if (image != null && !image.isEmpty()) {

			Path path = Paths.get("C:/Users/Kuldeep/workspace/FitnessWorld2/src/main/webapp/WEB-INF/resources/images/"
					+ product.getId() + ".png");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return "redirect:/all/product/productlist";
	}

	/* To check the product list */
	@RequestMapping("/all/product/productlist")
	public String getAllProducts(Model model) {
		List<Product> products = productService.getAllProducts();
		for (Product p : products) {
			System.out.println(p.getName());
			System.out.println(p.getPrice());
		}
		model.addAttribute("products", products);
		return "productlist";
	}

	/* To view the product */
	// http://localhost:8080/proje/all/product/viewproduct/1
	@RequestMapping("/all/product/viewproduct/{id}")
	public String viewProduct(@PathVariable int id, Model model) {
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "viewproduct";
	}

	/* To delete the Product */
	@RequestMapping("/admin/product/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id) {
		productService.deleteProduct(id);
		return "redirect:/all/product/productlist";
	}

	/* To get the product by ID */
	@RequestMapping("/all/product/productsByCategory")
	public String getProductsByCategory(@RequestParam(name = "searchCondition") String searchCondition, Model model,
			HttpSession session) {
		session.setAttribute("categories", categoryService.getAllCategories());
		List<Product> products = productService.getAllProducts();
		// Assigning list of products to model attribute products
		model.addAttribute("products", products);
		model.addAttribute("searchCondition", searchCondition);
		return "productlist";
	}

}
