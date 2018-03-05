package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.*;
import com.niit.model.*;
import java.security.Principal;
import java.util.Date;
import java.util.List;

@Transactional
@Controller
@Scope("session")
@RequestMapping("/cart")
public class CartController {
	@Autowired
	CartLineDAO cartDAO;

	@Autowired
	UserDAO userDAO;

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	
	// method for adding item to cartLine
	/*
	 * @RequestMapping("/add/{productId}") public String
	 * add(@PathVariable("productId") int productId, HttpServletRequest request)
	 * { Principal principal = request.getUserPrincipal(); String currentUser =
	 * principal.getName(); System.out.println(productId);
	 * System.out.println(currentUser);
	 * 
	 * return "home";
	 * 
	 * }
	 */

	@RequestMapping("/show")
	public ModelAndView show(HttpServletRequest request) {
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		User loggedinuser = userDAO.getByEmail(email);
		int userid = loggedinuser.getId();
		List<CartLine> listCart = cartDAO.listByUserId(userid);
		ModelAndView mv = new ModelAndView("cart");
		mv.addObject("listCart", listCart);
		return mv;
	}
	
	@RequestMapping("/order")
	public ModelAndView order(HttpServletRequest request ) {
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		User loggedinuser = userDAO.getByEmail(email);
		int user_id = loggedinuser.getId();
		OrderDetail order=new OrderDetail();
		List<CartLine> c=cartDAO.listByUserId(user_id);
	 
		order.setUser_id(user_id);
		int product_count=c.size();
		order.setOrder_count(product_count);//
		order.setOrder_date(new Date());
		double order_total=cartDAO.generateTotal(user_id);
		System.out.println("************"+ order_total);
		order.setOrder_total(order_total);
		order.setAddress(loggedinuser.getAddress());
		order.setProduct_id(1);
		//orderDAO.add
		cartDAO.addOrderDetail(order);
		ModelAndView mv = new ModelAndView("invoice");
		mv.addObject("order", order);
		
		return mv;
	}

	@RequestMapping("/add/{productId}")
	public ModelAndView add(@PathVariable("productId") int productId, HttpServletRequest request) {
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		System.out.println("***********email Name****" + email);
		User loggedinuser = userDAO.getByEmail(email);
		int userid = loggedinuser.getId();
		System.out.println("***********UserId****" + userid);
		Product cartproduct = productDAO.get(productId);
		double price = cartproduct.getUnitPrice();
		System.out.println("Item price" + price + "************************");

		CartLine cartitem = new CartLine();
		// cartitem.setId(1);
		cartitem.setCartId(1);
		cartitem.setUserId(userid);
		cartitem.setTotal(cartproduct.getUnitPrice());
		cartitem.setProductId(productId);
		cartitem.setProductCount(1);
		cartitem.setBuyingPrice((int)cartproduct.getUnitPrice());
		cartitem.setAvailable(true);
		cartDAO.add(cartitem);
		List<CartLine> listCart = cartDAO.listByUserId(userid);
		ModelAndView mv = new ModelAndView("cart");
		mv.addObject("listCart", listCart);
		return mv;

	}

	@RequestMapping("/remove/{id}")
	public ModelAndView remove(@PathVariable("id") int id, HttpServletRequest request) {
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		User loggedinuser = userDAO.getByEmail(email);
		int userid = loggedinuser.getId();
		CartLine cartproduct = cartDAO.get(id);
		cartDAO.remove(cartproduct);
		List<CartLine> listCart = cartDAO.listByUserId(userid);
		ModelAndView mv = new ModelAndView("cart");
		mv.addObject("listCart", listCart);
		mv.setViewName("cart");
		return mv;
	}

	// not working
	@RequestMapping(value="/update", method = RequestMethod.GET)
	public ModelAndView update(@RequestParam(name="id")int id,
			@RequestParam(name="productCount")int productCount,HttpServletRequest request) {
		//System.out.println("*****************"+request.getParameter("productCount"));
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		User loggedinuser = userDAO.getByEmail(email);
		int userid = loggedinuser.getId();
		//int id = Integer.parseInt(request.getParameter("id"));
		System.out.println( "*********"+ id+"*********************");
		//int productCount = Integer.parseInt(request.getParameter("productCount"));
		System.out.println( "*********"+productCount+"*********************");
		CartLine cartproduct = cartDAO.get(id);
		cartproduct.setProductCount(productCount);
		cartDAO.update(cartproduct);
		List<CartLine> listCart = cartDAO.listByUserId(userid);
		ModelAndView mv = new ModelAndView("cart");
		mv.addObject("listCart", listCart);
		mv.setViewName("cart");
		return mv;
	}

}
