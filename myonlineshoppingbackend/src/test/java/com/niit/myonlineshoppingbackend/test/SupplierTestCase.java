package com.niit.myonlineshoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;
public class SupplierTestCase {
private static AnnotationConfigApplicationContext context;
	
	
	private static SupplierDAO supplierDAO;
	
	
	Supplier supplier;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		supplierDAO = (SupplierDAO)context.getBean("supplierDAO");
	}

	@Test
	public void testCRUDSupplier() {
		
		// create operation
	Supplier supplier=new Supplier();	
	supplier.setName("xyz");
		
		assertEquals("Something went wrong while inserting a new supplier!",
				true,supplierDAO.add(supplier));	
}

}