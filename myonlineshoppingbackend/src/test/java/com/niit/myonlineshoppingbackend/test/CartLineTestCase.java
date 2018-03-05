package com.niit.myonlineshoppingbackend.test;
import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartLineDAO;

import com.niit.model.CartLine;
public class CartLineTestCase {
	private static AnnotationConfigApplicationContext context;
	
private static CartLineDAO cartLineDAO;
	
	
	private CartLine cartline;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		cartLineDAO = (CartLineDAO)context.getBean("cartLineDAO");
	}
	
	/*@Test // tested-working
	public void testAddCartLine() {
					
		CartLine c=new CartLine();
		//c.setId(1);
		c.setProductCount(5);
		c.setAvailable(true);
		c.setBuyingPrice(900);
		c.setCartId(1);
		c.setProductId(1);
		c.setTotal(1900);
		c.setUserId(1);
		assertEquals("Successfully added to the cart item from the table!",true,cartLineDAO.add(c));	
		
	}
	*/
	@Test
	public void testGrandTotal()
	{		
		assertEquals((double)43000.00,(double)cartLineDAO.generateTotal(2),0);
		
	}
}
