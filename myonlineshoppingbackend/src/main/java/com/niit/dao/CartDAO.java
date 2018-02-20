package com.niit.dao;
import com.niit.model.*;
import java.util.*;

public interface CartDAO {

	public List<Cart> list();
	public Cart get(int id);	
	public boolean add(Cart cart);
	public boolean update(Cart cart);
	public boolean remove(Cart cart);
	
}
