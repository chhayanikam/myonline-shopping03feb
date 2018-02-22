package com.niit.dao;
import com.niit.model.*;
import java.util.List;

public interface UserDAO {

	// user related operation
	User getByEmail(String email);
	User get(int id);

	boolean add(User user);
	
	// adding and updating a new address
	Address getAddress(int addressId);
	boolean addAddress(Address address);
	boolean updateAddress(Address address);
	Address getBillingAddress(int userId);
	List<Address> listShippingAddresses(int userId);

	// validate User
	 public User checkLogin(String userName, String userPassword);
	 boolean updateCart(Cart cart);
}
