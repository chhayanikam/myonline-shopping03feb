package com.niit.controller;

import java.util.List;

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

import com.niit.dao.*;
import com.niit.model.*;

import util.FileUtil;

@Controller
@RequestMapping("/admin")
public class AdminController {

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

	// only for admin
	@RequestMapping(value = { "listallproducts" }, method = RequestMethod.GET)
	public ModelAndView listAllProducts() {
		ModelAndView mv = new ModelAndView();
		List<Product> listprod = productDAO.getLatestActiveProducts(7);
		mv.addObject("listallproducts", listprod);
		mv.setViewName("listallproducts");
		return mv;
	}

	// only for admin - add supplier
		@RequestMapping(value = "saveSupplier", method = RequestMethod.POST)
		public ModelAndView saveSupplier(@ModelAttribute("supplier") Supplier supplier) {
			ModelAndView mv = new ModelAndView();
			supplierDAO.add(supplier);

			mv.setViewName("admin");
			return mv;
		}

		@RequestMapping(value = "saveCategory", method = RequestMethod.POST)
		public ModelAndView saveCategory(@ModelAttribute("category") Category category) {
			ModelAndView mv = new ModelAndView();
			categoryDAO.add(category);
			mv.setViewName("admin");
			return mv;
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

			mv.setViewName("admin");
			return mv;

		}

}
