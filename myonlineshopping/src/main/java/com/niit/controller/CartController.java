package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.*;
import com.niit.model.*;

import util.FileUtil;

@Controller
public class CartController {

	@Autowired
	CartDAO cartDAO;

	// method to add to cart
	@RequestMapping(value = { "addtocart" }, method = RequestMethod.POST)
	public ModelAndView AddToCart(@ModelAttribute("product") Cart cartproduct, HttpServletRequest request) {
		// int productId=Integer.parseInt(request.getParameter("id"));
		System.out.println("In add to cart Method");
		ModelAndView mv = new ModelAndView();
		cartDAO.add(cartproduct);
		mv.addObject("cart", cartproduct);
		mv.setViewName("cart");
		return mv;
	}

}
