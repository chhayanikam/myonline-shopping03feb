package com.niit.model;
import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "cart_line")
@Component
public class CartLine {

private static final long serialVersionUID = 1L;

@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
@Column(name = "product_id")
private int productId;
@Column(name = "user_id")
private int userId;
		
		@Column(name = "cart_id")
		private int cartId;	
		
		@Column(name = "product_count")
		private int productCount;
		
		private double total;
		
		@Column(name = "buying_price")
		private double buyingPrice;
	
		@Column(name = "is_available")
		private boolean available = true;
		
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public double getBuyingPrice() {
		return buyingPrice;
	}
	public void setBuyingPrice(double buyingPrice) {
		this.buyingPrice = buyingPrice;
	}
	
		
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getProductCount() {
		return productCount;
	}
	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}

	
		
}
