package com.niit.dao;
import java.util.List;
import com.niit.model.OrderDetail;
public interface OrderDAO {
	boolean add(OrderDetail product);
	boolean update(OrderDetail product);
	boolean delete(OrderDetail product);

}
