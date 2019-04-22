package com.coffee.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.coffee.common.exception.DeleteFailException;
import com.coffee.common.exception.EditFailException;
import com.coffee.common.exception.RegistFailException;
import com.coffee.model.domain.Category;
import com.coffee.model.domain.Product;
import com.coffee.model.service.CategoryService;
import com.coffee.model.service.ProductService;
@Controller
public class TestController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@RequestMapping(value="/test/product/list",method=RequestMethod.GET)
	public ModelAndView selectAll() {
		List<Product> productList = productService.selectAll();
		ModelAndView mav = new ModelAndView("test/product/list");
		mav.addObject("productList", productList);
		return mav;
	}
	
	@RequestMapping(value="/test/product/goRegist", method=RequestMethod.GET)
	public ModelAndView goRegist() {
		System.out.println("카테고리 불러오는중...");
		List<Category> categoryList = categoryService.selectAll();
		ModelAndView mav = new ModelAndView("test/product/regist");
		mav.addObject("categoryList", categoryList);
		return mav;
	}
	
	@RequestMapping(value="/test/product/regist", method=RequestMethod.POST)
	public String regist(Product product, int category_id) {
		System.out.println("category_id : " + category_id);
		Category category = new Category();
		category.setCategory_id(category_id);
		product.setCategory(category);
		if(product.getCategory() != null) {
			System.out.println("들어갔다!!");
		}
		productService.insert(product);
		return "redirect:/test/product/list";
	}
	
	@RequestMapping(value="/test/product/detail", method=RequestMethod.GET)
	public ModelAndView select(int product_id) {
		Product product = productService.select(product_id);
		List<Category> categoryList = categoryService.selectAll();
		ModelAndView mav = new ModelAndView("test/product/detail");
		mav.addObject("product", product);
		mav.addObject("categoryList", categoryList);
		return mav;
	}
	
	@RequestMapping(value="/test/product/update", method=RequestMethod.POST)
	public String update(Product product, int category_id) {
		Category category = new Category();
		category.setCategory_id(category_id);
		product.setCategory(category);
		productService.update(product);
		return "redirect:/test/product/list";
	}
	
	@RequestMapping
	public String delete(int product_id) {
		productService.delete(product_id);
		return "redirect:/test/product/list";
	}
	
	@ExceptionHandler(RegistFailException.class)
	public ModelAndView registFail(RegistFailException e) {
		ModelAndView mav = new ModelAndView("test/error");
		mav.addObject("errorMessage", e);
		return mav;
	}
	
	@ExceptionHandler(EditFailException.class)
	public ModelAndView editFail(EditFailException e) {
		ModelAndView mav = new ModelAndView("test/error");
		mav.addObject("errorMessage", e);
		return mav;
	}
	
	@ExceptionHandler(DeleteFailException.class)
	public ModelAndView deleteFail(DeleteFailException e) {
		ModelAndView mav = new ModelAndView("test/error");
		mav.addObject("errorMessage", e);
		return mav;
	}
}
