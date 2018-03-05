package com.niit.dao;
import com.niit.model.*;
import java.util.List;

public interface UserDAO {

	// user related operation
	User getByEmail(String email);
	User get(int id);
	boolean add(User user);
	

}
