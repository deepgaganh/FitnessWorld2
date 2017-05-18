package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;
@Repository
public class ProductDaoImpl implements ProductDao{
			@Autowired
	private SessionFactory sessionFactory;
	public void saveOrUpdateProduct(Product product) {
		Session session=sessionFactory.openSession();
		System.out.println("Product Id before insertion" +product.getId());
		session.save(product);
		System.out.println("Product Id after insertion" +product.getId());
		session.flush();
		session.close();
	}
	public List<Product> getAllProducts() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		session.close();
		return products;
	}
	public Product getProductById(int id) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, id);
		session.close();
		return product;
	}
	
	public void deleteProduct(int id) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, id);
		session.delete(product);
		session.flush();
		session.close();
	}
	
	

}
