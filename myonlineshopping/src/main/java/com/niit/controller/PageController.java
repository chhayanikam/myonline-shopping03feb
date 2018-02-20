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

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.dao.UserDAO;
import com.niit.dao.CartDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;
import com.niit.model.Cart;

import util.FileUtil;

@Controller
public class PageController {
	
	@Autowired
	 CategoryDAO categoryDAO;
	
	@Autowired
	 ProductDAO productDAO;	

	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired 
	UserDAO userDAO;

	@Autowired
	CartDAO cartDAO;

	//only for admin
@RequestMapping(value={"listallproducts"}, method=RequestMethod.GET)
public ModelAndView listAllProducts()
{
	ModelAndView mv=new ModelAndView();
	List<Product> listprod=productDAO.getLatestActiveProducts(7);
    mv.addObject("listallproducts",listprod);
	mv.setViewName("listallproducts");
	return mv;	
	}

// method to add to cart

@RequestMapping(value={"addtocart"}, method=RequestMethod.POST)
public ModelAndView AddToCart(@ModelAttribute("cart")Cart cartproduct,HttpServletRequest request)
{
//	int productId=Integer.parseInt(request.getParameter("id"));
	System.out.println("In add to cart Method");
	ModelAndView mv=new ModelAndView();
	cartDAO.add(cartproduct);
    mv.addObject("cart",cartproduct);
    mv.setViewName("listProducts");
	return mv;	
	}

// method to load single product
@RequestMapping(value={"SingleProduct"}, method=RequestMethod.GET)
public ModelAndView SingleProduct(@ModelAttribute("product")Product product,HttpServletRequest request)
{
	//int productId=product.getId();
	int productId=Integer.parseInt(request.getParameter("id"));
	System.out.println("_____________________"+productId);
	ModelAndView mv=new ModelAndView();
	Product product1=productDAO.get(productId);
    mv.addObject("product",product1);
	mv.setViewName("SingleProduct");
	return mv;	
	}






@RequestMapping(value={"listProductByCategory"}, method=RequestMethod.GET)
public ModelAndView listProductByCategory(@ModelAttribute("product") Product product,HttpServletRequest request)
{
	int categoryId=Integer.parseInt(request.getParameter("id"));
	//System.out.println("_____________________"+categoryId);
	ModelAndView mv=new ModelAndView();
	List<Product> listprod=productDAO.listActiveProductsByCategory(categoryId);
    mv.addObject("listprod",listprod);
	mv.setViewName("listProducts");
	return mv;	
	}

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
//@RequestMapping(value={"/","home","/index","listProducts"})
@RequestMapping(value="/")
	public ModelAndView indexFinal()
	{
	// passing the list of categories
	ModelAndView mv=new ModelAndView("home");
	mv.addObject("categories",categoryDAO.list());
	return mv;
				
	//return "home";
		
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
