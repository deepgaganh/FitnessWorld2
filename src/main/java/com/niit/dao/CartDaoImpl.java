package com.niit.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Cart;
import com.niit.model.CartItem;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	
			@Autowired
	private SessionFactory sessionFactory;

	public Cart getCartById(int cartId) {
		Session session = sessionFactory.openSession();
		return (Cart) session.get(Cart.class, cartId);
	}

	public void addCartItem(CartItem cartItem) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(cartItem);
		session.flush();
		session.close();
	}

	public void removeCartItem(CartItem cartItem) {
		Session session = sessionFactory.openSession();
		session.delete(cartItem);
		session.flush();
	}

	public void removeAllCartItems(Cart cart) {
		/*
		 * List<CartItem> cartItems = cart.getCartItems(); for (CartItem item :
		 * cartItems) { removeCartItem(item); }
		 */
		String hql = "delete from CartItem C where cartId='" + cart.getId() + "'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		query.executeUpdate();
	}

	public CartItem getCartItemByProductId(int id, int cartId) {
		List<CartItem> cartItems = getAllCartItems(cartId);
		if (cartItems != null && !cartItems.isEmpty()) {
			for (CartItem item : cartItems) {
				if (item.getProduct().getId() == id) {
					return item;
				}
			}
		}

		return null;
	}

	@SuppressWarnings("unchecked")
	public List<CartItem> getAllCartItems(int cartId) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CartItem where CARTID = '" + cartId + "' ORDER BY ID ASC");
		List<CartItem> cartItems = query.list();
		return cartItems;
	}

	public void update(Cart cart) {
		Session session = sessionFactory.openSession();
		try {

			session.saveOrUpdate(cart);
			session.flush();
			session.close();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	/*
	 * public void deleteCartItemThroughProduct(Product product) { Session
	 * session=sessionFactory.openSession(); int x=product.getId(); String
	 * hql="delete from CartItem C where product_id='" + x + "'"; Query
	 * query=session.createQuery(hql); query.executeUpdate();
	 * 
	 * 
	 * }
	 */

}
