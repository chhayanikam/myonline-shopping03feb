package com.niit.myonlineshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
/*
import com.niit.myonlineshoppingbackend.dao.CategoryDAO;
import com.niit.myonlineshoppingbackend.dao.ProductDAO;
import com.niit.myonlineshoppingbackend.dto.Category;
import com.niit.myonlineshoppingbackend.dto.Product;
*/
//@Controller
//@RequestMapping("/manage")
public class AdminController {
/*
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value="/products", method=RequestMethod.GET)
	public ModelAndView showAdmin(@RequestParam(name="operation", required=false) String operation)
	{
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("userClickAdmin",true);
		mv.addObject("title", "Admin");
		
		Product nProduct=new Product();
		nProduct.setSupplierId(1);
		nProduct.setActive(true);
		mv.addObject("product",nProduct);
		
		if(operation!=null)
		{
			if(operation.equals("product"))
			{
				mv.addObject("message","product submitted successfully");
			}
		}
		return mv;
	}
	//handle add product submission
	@RequestMapping(value="/products", method=RequestMethod.POST)
	public String handleProductSubmission(@ModelAttribute("product")Product mproduct)
	{
	  productDAO.add(mproduct);
	
		return "redirect:/manage/products?";
	}
	
	// returning categories for all the products
	@ModelAttribute("categories")
	public List<Category> getCategories(){
	return categoryDAO.list();	
	}
	
	*/
}
