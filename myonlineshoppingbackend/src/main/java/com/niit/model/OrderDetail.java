package com.niit.model;

import java.util.Date;
import java.util.UUID;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "ORDER_DETAIL")
@Component
public class OrderDetail implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private int user_id;
	
	private double order_total;
	private int order_count;
	private Date order_date;
	
	private int product_id;
	
	private String shipping_id;
	private String billing_id;
	private String Address;
	
	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getShipping_id() {
		return shipping_id;
	}

	public void setShipping_id(String shipping_id) {
		this.shipping_id = shipping_id;
	}

	public String getBilling_id() {
		return billing_id;
	}

	public void setBilling_id(String billing_id) {
		this.billing_id = billing_id;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public OrderDetail() {
		this.shipping_id = "SP"+UUID.randomUUID().toString().substring(26).toUpperCase();
		this.billing_id = "BL"+UUID.randomUUID().toString().substring(26).toUpperCase();
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public double getOrder_total() {
		return order_total;
	}

	public void setOrder_total(double order_total) {
		this.order_total = order_total;
	}

	public int getOrder_count() {
		return order_count;
	}

	public void setOrder_count(int order_count) {
		this.order_count = order_count;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	
	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	
}
