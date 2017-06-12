package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CartItem {
			@Id
			@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
	
		    @ManyToOne(fetch=FetchType.EAGER)
		    @JoinColumn(name = "cartId")
	private Cart cart;
	
		    @ManyToOne(fetch=FetchType.EAGER)
		    @JoinColumn(name = "productId")
	private Product product;
	
	private int quantity;
	
	private double totalprice;


	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	
	

}
