package com.coffee.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.coffee.model.service.CategoryService;
import com.coffee.model.service.ProductService;

@Controller
public class ClientController {
	@Autowired
	ProductService pro_service;
	@Autowired
	CategoryService cat_service;
	@RequestMapping(value="/client/menu/getPage", method=RequestMethod.GET)
	public ModelAndView getPage() {
		List menuList = pro_service.selectAll();
		List categoryList=cat_service.selectAll();
		ModelAndView mav = new ModelAndView("/client/coffeemenu");
		mav.addObject("menuList", menuList);
		mav.addObject("categoryList", categoryList);
		return mav;
	}
	@RequestMapping(value="/client/menu/all", method=RequestMethod.GET)
	@ResponseBody
	public List getAllMenu() {
		List menuList = pro_service.selectAll();
		return menuList;
	}
	
	@RequestMapping(value="/client/menu/category_id", method=RequestMethod.GET)
	@ResponseBody
	public List getCategoryMenu(int category_id) {
		System.out.println(category_id);
		List menuList = pro_service.selectByCategory(category_id);
		return menuList;
	}

}