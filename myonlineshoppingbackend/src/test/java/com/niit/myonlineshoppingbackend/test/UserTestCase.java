package com.niit.myonlineshoppingbackend.test;
import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.dao.UserDAO;
import com.niit.model.Address;
import com.niit.model.Cart;
import com.niit.model.User;

public class UserTestCase {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	//private Cart cart = null;
	//private Address address = null;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		userDAO = (UserDAO) context.getBean("userDAO");
	}
	

	@Test
	public void testAddUser() {
		
		user = new User() ;
		user.setFirstName("Chhaya");
		user.setLastName("Nikam");
		user.setEmail("chh@gmail.com");
		user.setContactNumber("1234512345");
		user.setRole("ROLE_USER");
		user.setEnabled(true);
		user.setPassword("12345");
		
		
		/*address = new Address();
		address.setAddressLineOne("Jalaram Society, Gandhar Nagar");
		address.setAddressLineTwo("Near Ananad");
		address.setCity("Mumbai");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("400001");
		address.setBilling(true);*/
		
	//	cart = new Cart();
		
		// linked the address with the user
	//	address.setUser(user);
		
		// linked the cart with the user
		//cart.setUser(user);
		// link the user with the cart
	//	user.setCart(cart);
		
		// add the user
		assertEquals("Failed to add the user!", true, userDAO.add(user));	
		// add the address
		//assertEquals("Failed to add the billing address!", true, userDAO.addAddress(address));

				
		// add the shipping address
		/*address = new Address();
		address.setAddressLineOne("201/B Jadoo Society, Kishan Kanhaiya Nagar");
		address.setAddressLineTwo("Near Kudrat Store");
		address.setCity("Mumbai");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("400001");
		*///address.setUser(user);
		//assertEquals("Failed to add the shipping address!", true, userDAO.addAddress(address));
		
	}
	


	// working for uni-directional
/*
	@Test
	public void testAddAddress() {
		user = userDAO.get(1);
		
		address = new Address();
		address.setAddressLineOne("301/B Jadoo Society, King Uncle Nagar");
		address.setAddressLineTwo("Near Store");
		address.setCity("Mumbai");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("400001");
				
		address.setUser(user);
		// add the address
		assertEquals("Failed to add the address!", true, userDAO.addAddress(address));	
	}
	
	@Test
	public void testUpdateCart() {
		user = userDAO.get(1);
		cart = user.getCart();
		cart.setGrandTotal(10000);
		cart.setCartLines(1);
		assertEquals("Failed to update the cart!", true, userDAO.updateCart(cart));			
	} 

*/

	
	

}
