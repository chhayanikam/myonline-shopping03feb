package com.niit.myonlineshoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	
	
	private static CategoryDAO categoryDAO;
	
	
	private Category category;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
	
	@Test
	public void testListCategory() {
					
		assertEquals("Successfully fetched the list of categories from the table!",3,categoryDAO.list().size());
		
		
	}
	/*
	@Test
	public void testAddCategory() {
		
		category = new Category();		
		category.setName("cat1");
		category.setDescription("This is some description for cat1!");		
		category.setActive(true);
		assertEquals("failed to add category inside the table!",true,categoryDAO.add(category));		
		
	}
	
	
	@Test
	public void testGetCategory() {
		
		category = categoryDAO.get(3);
		
		
		assertEquals("Successfully fetched a single category from the table!","Saree",category.getName());
		
		
	}
		
	@Test
	public void testUpdateCategory() {
		
		category = categoryDAO.get(3);
		
		category.setName("TV");
		
		assertEquals("Successfully updated a single category in the table!",true,categoryDAO.update(category));
		
		
	}


	@Test
	public void testDeleteCategory() {
		
		category = categoryDAO.get(3);		
		assertEquals("Successfully deleted a single category in the table!",true,categoryDAO.delete(category));
		
	}*/	
}
