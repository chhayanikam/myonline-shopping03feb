package com.niit.daoImpl;

import java.math.BigDecimal;
import java.util.List;

import com.niit.dao.*;
import com.niit.model.Cart;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Cart> list() {
		return sessionFactory.getCurrentSession().createQuery("FROM Cart", Cart.class).getResultList();
	}

	// also add to Cart table in db
	public boolean addItemToCart(Cart cart) {
		try {
			sessionFactory.getCurrentSession().persist(cart);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public Cart get(int id) {
		try {
			return sessionFactory.getCurrentSession().get(Cart.class, Integer.valueOf(id));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null; // TODO Auto-generated method stub

	}

	@Override
	public BigDecimal addToCart(List<Cart> list, Cart cart) {

		BigDecimal total = new BigDecimal(0);
		BigDecimal price = new BigDecimal(0);
		boolean isExit = false;
		for (Cart c : list) {
			if (c.equals(cart)) {
				c.setCartQuantity(c.getCartQuantity() + 1);
				isExit = true;
			}
			price = new BigDecimal(c.getCartprice());
			total = total.add(price.multiply(new BigDecimal(c.getCartQuantity())));
		}
		if (isExit == false) {
			list.add(cart);
			total = total.add(price.multiply(new BigDecimal(cart.getCartQuantity())));
		}
		return total;

	}

	public BigDecimal updateCartItem(List<Cart> list, int id, int quantity) {
		BigDecimal price = new BigDecimal(0);
		BigDecimal total = new BigDecimal(0);
		for (Cart c : list) {
			if (c.getCartProductId() == (id)) {
				c.setCartQuantity(quantity);
			}
			price = new BigDecimal(c.getCartprice());
			total = total.add(price.multiply(new BigDecimal(c.getCartQuantity())));
		}
		return total;
	}

	public BigDecimal removeCartItem(List<Cart> list, int id) {
		BigDecimal total = new BigDecimal(0);
		BigDecimal price = new BigDecimal(0);
		Cart temp = null;
		for (Cart c : list) {
			if (c.getCartId() == (id)) {
				temp = c;
				continue;
			}
			price = new BigDecimal(c.getCartprice());
			total = total.add(price.multiply(new BigDecimal(c.getCartQuantity())));
		}
		if (temp != null)
			list.remove(temp);
		return total;
	}

	/*
	 * @Override public boolean update(Cart cart) { try { sessionFactory
	 * .getCurrentSession() .update(cart); return true; } catch(Exception ex) {
	 * ex.printStackTrace(); } return false;
	 * 
	 * }
	 * 
	 * @Override public boolean remove(Cart cart) { try {
	 * 
	 * sessionFactory.getCurrentSession().delete(cart); return true; } catch
	 * (Exception ex) { ex.printStackTrace(); return false; }
	 * 
	 * }
	 * 
	 */
}
