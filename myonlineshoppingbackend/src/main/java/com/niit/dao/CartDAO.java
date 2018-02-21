package com.niit.dao;
import com.niit.model.*;

import java.math.BigDecimal;
import java.util.*;

public interface CartDAO {

	public List<Cart> list();
	public Cart get(int id);	
	public BigDecimal addToCart(List<Cart> list,Cart cart);
	public BigDecimal updateCartItem(List<Cart> list,int id ,int quantity);
	public BigDecimal removeCartItem(List<Cart> list,int id);
	public boolean addItemToCart(Cart cart);	
}
