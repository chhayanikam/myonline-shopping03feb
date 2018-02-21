package com.niit.model;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="CART")
@Component
public class Cart implements Serializable {
	
private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private int cartId;
	
	private int cartProductId;
	
	private double cartprice;
	
	private int cartQuantity;
	
	private String cartImage;
	
	private String cartProductName;
	
	private int user_id;
	
	@Column(name = "grand_total")
	private double grandTotal;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getCartProductId() {
		return cartProductId;
	}

	public void setCartProductId(int cartProductId) {
		this.cartProductId = cartProductId;
	}

	public double getCartprice() {
		return cartprice;
	}

	public void setCartprice(double cartprice) {
		this.cartprice = cartprice;
	}

	public int getCartQuantity() {
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
	}

	public String getCartImage() {
		return cartImage;
	}

	public void setCartImage(String cartImage) {
		this.cartImage = cartImage;
	}

	public String getCartProductName() {
		return cartProductName;
	}

	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}

	public int getUser_id() {
		return user_id;
	}

/*	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}*/

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

	public Cart() 
	{
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int cartId, int cartProductId, double cartprice, int cartQuantity, String cartImage,
			String cartProductName, double grandTotal) {
		super();
		this.cartId = cartId;
		this.cartProductId = cartProductId;
		this.cartprice = cartprice;
		this.cartQuantity = cartQuantity;
		this.cartImage = cartImage;
		this.cartProductName = cartProductName;
	//	this.user_id = user_id;
		this.grandTotal = grandTotal;
	}
	
	 public void ToCart(Product product) {
	        this.cartProductId = product.getId();
	        this.cartProductName = product.getName();
	        this.cartprice = product.getUnitPrice();
	        this.cartQuantity = 1;	        
	    }
	
		
	// linking the cart with a user
	/*@OneToOne
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}*/
	
}
