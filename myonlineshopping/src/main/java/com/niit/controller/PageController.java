package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.daoImpl.*;

@Controller
public class PageController {
	// fetch the categories from the backend project
	@Autowired
	 CategoryDAO categoryDAO;
	
	@Autowired
	 ProductDAO productDAO;	
	
	/*@RequestMapping(value={"/","home","/index"})
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title","Home");
		
		// passing the list of Object
	//	mv.addObject("categories",categoryDAO.list());
		mv.addObject("userClickHome",true);
		return mv;
		
	}
	
	@RequestMapping(value="/admin")
	public ModelAndView admin()
	{
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title","Admin");
		
		// passing the list of Object
		//mv.addObject("categories",categoryDAO.list());
		mv.addObject("userClickAdmin",true);
		return mv;
		
	}
	
	@RequestMapping(value="/signup")
	public ModelAndView signup()
	{
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title","SignUp");
		
		// passing the list of Object
		//mv.addObject("categories",categoryDAO.list());
		mv.addObject("userClickSignup",true);
		return mv;
		
	}
	
	@RequestMapping(value="/listproducts")
	public ModelAndView listProducts()
	{
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title","ListProducts");
		
		// passing the list of Object
		//mv.addObject("categories",categoryDAO.list());
		mv.addObject("userClickListProducts",true);
		return mv;
		
	}
	
	
	@RequestMapping(value="/about")
	public ModelAndView about()
	{
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title","About Us");
		mv.addObject("userClickAbout",true);
		return mv;
		
	}
	@RequestMapping(value="/contact")
	public ModelAndView contact()
	{
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title","Contact US");
		mv.addObject("userClickContact",true);
		return mv;
		
	}

	
*/	@RequestMapping(value="/")
	public String indexFinal()
	{
		return "home";
	}
@RequestMapping(value="/login")
public String login()
{
	return "login";
	
}
@RequestMapping(value="/about")
public String about()
{
	return "about";
	
}	
@RequestMapping(value="/contact")
public String contact()
{
	return "contact";
	
}	
@RequestMapping(value="/signup")
public String signup()
{
	return "signup";
	
}	
	}
