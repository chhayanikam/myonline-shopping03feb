package com.niit.daoImpl;
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
		return sessionFactory
				.getCurrentSession()
					.createQuery("FROM Cart" , Cart.class)
						.getResultList();
	}

	@Override
	public Cart get(int id) {
		try {			
			return sessionFactory
					.getCurrentSession()
						.get(Cart.class,Integer.valueOf(id));			
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}
		return null;	// TODO Auto-generated method stub
		

	}

	@Override
	public boolean add(Cart cart) {
		try {			
			int qty=cart.getCartQuantity();
			double price= cart.getCartprice();
			cart.setGrandTotal(qty*price);
	cart.setUser_id(1);
			sessionFactory
					.getCurrentSession()
						.persist(cart);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;

	}

	@Override
	public boolean update(Cart cart) {
		try {			
			sessionFactory
					.getCurrentSession()
						.update(cart);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;	

	}

	@Override
	public boolean remove(Cart cart) {
		try {
			
			sessionFactory.getCurrentSession().delete(cart);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	
}
