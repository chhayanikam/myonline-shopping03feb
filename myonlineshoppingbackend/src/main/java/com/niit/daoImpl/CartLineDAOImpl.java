package com.niit.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartLineDAO;
import com.niit.model.CartLine;
import com.niit.model.OrderDetail;

@Repository("cartLineDAO")
@Transactional
public class CartLineDAOImpl implements CartLineDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<CartLine> list(int cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CartLine get(int id) {
		return sessionFactory.getCurrentSession().get(CartLine.class, Integer.valueOf(id));	
		}

	@Override
	public boolean add(CartLine cartLine) {
		try {
			sessionFactory.getCurrentSession().persist(cartLine);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean update(CartLine cartLine) {
		try {
			sessionFactory.getCurrentSession().update(cartLine);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean remove(CartLine cartLine) {
		try {

			sessionFactory.getCurrentSession().delete(cartLine);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public CartLine getByCartAndProduct(int cartId, int productId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CartLine> listAvailable(int cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addOrderDetail(OrderDetail orderDetail) {
		try {
			sessionFactory.getCurrentSession().persist(orderDetail);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;

	}

	@Override
	public List<CartLine> listByUserId(int userId) {
		String query = "FROM CartLine WHERE user_id = :userId";
		return sessionFactory.getCurrentSession().createQuery(query, CartLine.class)
				.setParameter("userId", userId)
				.getResultList();
	}

	@Override
	public double generateTotal(int userId) {
		        String query = "select sum(buyingPrice) from CartLine where user_id=:userId";
		Object obj= sessionFactory.getCurrentSession().createQuery(query, Double.class)
				.setParameter("userId", userId).getSingleResult();
		return (double)obj;
	}

	
}
