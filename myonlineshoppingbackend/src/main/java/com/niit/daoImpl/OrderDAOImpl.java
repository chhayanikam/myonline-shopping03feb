package com.niit.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.OrderDAO;
import com.niit.model.OrderDetail;
@Repository("orderDAO")
@Transactional
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean add(OrderDetail order) {
		try {			
			sessionFactory
					.getCurrentSession()
						.persist(order);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;
	}

	@Override
	public boolean update(OrderDetail order) {
		try {			
			sessionFactory
					.getCurrentSession()
						.update(order);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;	}

	@Override
	public boolean delete(OrderDetail order) {
		try {			
			sessionFactory
					.getCurrentSession()
						.delete(order);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;
	}

}
