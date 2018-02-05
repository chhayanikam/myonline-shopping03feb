package com.niit.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.niit.model.Category;
//@Service
public interface CategoryDAO {
	Category get(int id);
	List<Category> list();
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	

}
