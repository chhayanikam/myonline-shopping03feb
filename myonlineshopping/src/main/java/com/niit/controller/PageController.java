package com.niit.controller;

import com.niit.dao.*;
import com.niit.model.*;
import com.niit.myutil.*;

import java.security.Principal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;

@Controller
@Scope("session")
public class PageController {

	@Autowired
	CategoryDAO categoryDAO;

 	@Autowired
	ProductDAO productDAO;

	@Autowired
	SupplierDAO supplierDAO;

	@Autowired
	UserDAO userDAO;

	// create a session 
	HttpSession mysession;
	// method to load single product
	@RequestMapping(value ="/SingleProduct/{id}", method = RequestMethod.GET)
	public ModelAndView SingleProduct(@PathVariable int id,@ModelAttribute("product") Product product) {
		// int productId=product.getId();
		//int productId = Integer.parseInt(request.getParameter("id"));
		ModelAndView mv = new ModelAndView();
		Product product1 = productDAO.get(id);
		mv.addObject("product", product1);
		mv.setViewName("SingleProduct");
		return mv;
	}

	@RequestMapping(value = { "listProductByCategory" }, method = RequestMethod.GET)
	public ModelAndView listProductByCategory(@ModelAttribute("product") Product product, HttpServletRequest request) {
		int categoryId = Integer.parseInt(request.getParameter("id"));
		ModelAndView mv = new ModelAndView();
		List<Product> listprod = productDAO.listActiveProductsByCategory(categoryId);
		mv.addObject("listprod", listprod);
		mv.setViewName("listProducts");
		return mv;
	}

	// method to add new user
	@RequestMapping(value = "saveUser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user") User user) {
		
		ModelAndView mv = new ModelAndView();
		user.setRole("ROLE_USER");
		
		
		userDAO.add(user);
		
		mv.setViewName("home");
		return mv;
	}

	// @RequestMapping(value={"/","home","/index","listProducts"})
	@RequestMapping(value = "/")
	public ModelAndView indexFinal() {
		// passing the list of categories
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("categories", categoryDAO.list());
		return mv;
		// return "home";
	}

	@RequestMapping(value = "/success")
	public String sucess() {
		return "success";
	}

	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("about");
		mv.addObject("categories", categoryDAO.list());
		return mv;
		//return "about";

	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("contact");
		mv.addObject("categories", categoryDAO.list());
		return mv;

	}

	@RequestMapping(value = "/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("categories", categoryDAO.list());
		return mv;

	}

	@RequestMapping(value = "/signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView("signup");
		mv.addObject("categories", categoryDAO.list());
		return mv;

	}
// when the user clicks admin populate the dropdowns for supplier and categories
	@RequestMapping(value = "/goToadmin")
	public ModelAndView goToadmin(@ModelAttribute("product") Product mProduct, BindingResult results, Model model,
			HttpServletRequest request) {		
		ModelAndView mv = new ModelAndView("admin");
		// to populate categories in add product
		mv.addObject("categories", categoryDAO.list());
		//to populate suppliers in add product
		mv.addObject("suppliers",supplierDAO.list());
		return mv;

	}
	
	@RequestMapping("/goTologin")
	public ModelAndView gotologin()
	{
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("categories", categoryDAO.list());
		return mv;
	}
	
	@RequestMapping("/error")
	public String gotoerror()
	{
		return "error";
	}
	
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	    @ResponseBody
	    public ModelAndView currentUserNameSimple(@ModelAttribute("model") User user,HttpServletRequest request,@RequestParam(name="error", required = false)	String error,
				@RequestParam(name="logout", required = false) String logout) {
		 ModelAndView mv= new ModelAndView("login");
		 if(error!=null) {
				mv.addObject("message", "Username and Password is invalid!");
			}
			if(logout!=null) {
				mv.addObject("logout", "You have logged out successfully!");
			}
		//below code will help to fetch email as logged in user -to print on header
	        Principal principal = request.getUserPrincipal();
	        String email=principal.getName();
		 // find the user by using email id - which in turn give us userId for shipping
		   User loggedinuser=userDAO.getByEmail(email);
		   request.getSession().setAttribute( "userSession", loggedinuser );
	       // return email;
		   return mv;
	    }
	 
	 /*@RequestMapping(value="/login", method = RequestMethod.GET)
	  public String printUser(ModelMap model) {

	     User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	      //String name = obj.; //get logged in username
	      //String address=user.getAddress();
	      System.out.println("user Name=--------------"+ name + address);
	      model.addAttribute("username", name);
	      return name;

	  }
*/	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		// Invalidates HTTP Session, then unbinds any objects bound to it.
	    // Removes the authentication from securitycontext 		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
		
		return "redirect:/goTologin";
	}	
	
		
	@RequestMapping(value = "saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("product") Product mProduct, BindingResult results, Model model,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		productDAO.add(mProduct);

		// upload the file
		if (!mProduct.getFile().getOriginalFilename().equals("")) {
			FileUtil.uploadFile(request, mProduct.getFile(), mProduct.getCode());
		}
		 mv.addObject("product",mProduct);
		mv.setViewName("admin");
		return mv;

	}




}
