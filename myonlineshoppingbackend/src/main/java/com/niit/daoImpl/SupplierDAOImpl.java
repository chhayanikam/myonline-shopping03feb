package com.niit.daoImpl;

import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Repository("supplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO {


	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Supplier get(int id) {
		return sessionFactory.getCurrentSession().get(Supplier.class, Integer.valueOf(id));
	}

	@Override
	public List<Supplier> list() {
		String selectQuery = "FROM Supplier";		
		Query query = sessionFactory.getCurrentSession().createQuery(selectQuery);						
		return query.getResultList();
	}

	@Override
	public boolean add(Supplier supplier) {
		try {
			
			sessionFactory.getCurrentSession().persist(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean update(Supplier supplier) {
		try {
			
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Supplier supplier) {
		try {
			
			sessionFactory.getCurrentSession().delete(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}


}
