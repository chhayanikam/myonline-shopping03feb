package com.niit.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.*;
import com.niit.model.*;


@Controller
//@RequestMapping("/cart")
public class CartController {

	@Autowired
	CartDAO cartDAO;

	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value = "addToCart", method = RequestMethod.POST)
    public ModelAndView addToCart(@ModelAttribute("cart") Cart c ,@RequestParam int id, HttpSession session) {
		 BigDecimal total =new BigDecimal(0);
        ModelAndView mav = new ModelAndView();
        Product cartproduct = productDAO.get(id);
        Cart mycart = new Cart();
        List<Cart> list = (List<Cart>) session.getAttribute("cart");
        if (list == null) {
            list = new ArrayList<Cart>();
        }
        if (cartproduct != null) {
            mycart.ToCart(cartproduct);            
            total =cartDAO.addToCart(list, mycart);
            mav.addObject("total", total);
            session.setAttribute("cart", list);
            //cartDAO.ad
        }
        mav.addObject("listCart", list);
        mav.setViewName("cart");
        return mav;
    }
	
	@RequestMapping(value="removeCart")
    public ModelAndView removeCart(@RequestParam int id, HttpSession session) {
        ModelAndView mav = new ModelAndView("/cart");
        List<Cart> list = (List<Cart>) session.getAttribute("cart");
        if (list != null) {
            BigDecimal total = cartDAO.removeCartItem(list, id);
            mav.addObject("total", total);
            session.setAttribute("cart", list);
            mav.setViewName("cart");
        }
        mav.addObject("listCart", list);
        return mav;
    }
    
    @RequestMapping(value="updateCart")
    public ModelAndView updateCart(@RequestParam int id,
                                   @RequestParam int quantity,
                                   HttpSession session) {
        ModelAndView mav = new ModelAndView("/cart");
        List<Cart> list = (List<Cart>) session.getAttribute("cart");
        if (list != null) {
            BigDecimal total = cartDAO.updateCartItem(list, id, quantity);
            mav.addObject("total", total);
            session.setAttribute("cart", list);
            mav.setViewName("cart");
        }
        mav.addObject("listCart", list);
        return mav;
    }

// save the cart to Order Table
    @RequestMapping(value = "saveOrder", method = RequestMethod.POST)
	public ModelAndView saveOrder(@ModelAttribute("user") User user) {
		ModelAndView mv = new ModelAndView();
		// orderDAO method
		mv.setViewName("shipping");
		return mv;
	}

}
