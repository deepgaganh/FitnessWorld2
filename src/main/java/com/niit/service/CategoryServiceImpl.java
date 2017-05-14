package com.niit.service;

import java.util.List;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;

public class CategoryServiceImpl implements CategoryService{

	private CategoryDao categoryDao;
	public void saveCategory(Category category) {
		categoryDao.saveCategory(category);
	}

	public List<Category> getAllCategories() {
		
		return categoryDao.getAllCategories();
	}

	public void deleteCategory(int cid) {
		categoryDao.deleteCategory(cid);
		
	}

}
