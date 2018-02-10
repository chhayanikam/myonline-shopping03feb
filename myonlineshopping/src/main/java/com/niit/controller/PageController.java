package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.dao.UserDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;

import util.FileUtil;

@Controller
public class PageController {
	// fetch the categories from the backend project
	@Autowired
	 CategoryDAO categoryDAO;
	
	@Autowired
	 ProductDAO productDAO;	

	@Autowired
	SupplierDAO supplierDAO;
	
@Autowired 
UserDAO userDAO;

@RequestMapping(value="saveUser", method=RequestMethod.POST)
public ModelAndView saveUser(@ModelAttribute("user")User user)
{
	ModelAndView mv=new ModelAndView();
	user.setRole("ROLE_USER");
	userDAO.add(user);
	mv.setViewName("home");
	return mv;	
	}

@RequestMapping(value="saveSupplier", method=RequestMethod.POST)
public ModelAndView saveSupplier(@ModelAttribute("supplier")Supplier supplier)
{
	ModelAndView mv=new ModelAndView();
	supplierDAO.add(supplier);
	
	mv.setViewName("admin");
	return mv;	
	}

@RequestMapping(value="saveCategory", method=RequestMethod.POST)
public ModelAndView saveCategory(@ModelAttribute("category")Category category)
{
	ModelAndView mv=new ModelAndView();
	categoryDAO.add(category);	
	mv.setViewName("admin");
	return mv;	
	}


@RequestMapping(value="saveProduct", method=RequestMethod.POST)
public ModelAndView saveProduct(@ModelAttribute("product")Product mProduct,
		BindingResult results, Model model, HttpServletRequest request)
{
	ModelAndView mv=new ModelAndView();
	productDAO.add(mProduct);
	
	 //upload the file
	 if(!mProduct.getFile().getOriginalFilename().equals("") ){
		FileUtil.uploadFile(request, mProduct.getFile(), mProduct.getCode()); 
	 }

	mv.setViewName("admin");
	return mv;

	}


/*@RequestMapping(value="validateuser", method=RequestMethod.GET)
public ModelAndView validateuser(@ModelAttribute("user")User user,BindingResult result)
{
	ModelAndView mv=new ModelAndView();
	String email=user.getEmail();
	String password=user.getPassword();
	System.out.println(email + " " + password);
	User res=userDAO.checkLogin(email, password);
	if(res!=null)
	{
		mv.addObject("user", res);
		mv.setViewName("success");
	}
	else
	{
		mv.setViewName("error");
		
	}
	return mv;
	
}*/

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
//later add it to admin controller
@Autowired 
SupplierDAO supplierDAO;


	
*/

@RequestMapping(value="/")
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
@RequestMapping(value="/home")
public String home()
{
	return "home";
	
}
@RequestMapping(value="/signup")
public String signup()
{
	return "signup";
	
}	

@RequestMapping(value="/admin")
public String admin()
{
 return "admin";	
}
}
