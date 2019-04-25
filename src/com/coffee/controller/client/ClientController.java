package com.coffee.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	public ModelAndView getMenuPage() {
		List menuList = pro_service.selectAll();
		List categoryList=cat_service.selectAll();
		ModelAndView mav = new ModelAndView("/client/coffeemenu");
		mav.addObject("menuList", menuList);
		mav.addObject("categoryList", categoryList);
		return mav;
	}
	@RequestMapping(value="/client/point/getPage", method=RequestMethod.GET)
	public ModelAndView getPointPage() {
		List ptMenuList=pro_service.selectPtAll();
		List categoryList=cat_service.selectAll();
		ModelAndView mav = new ModelAndView("/client/pointmall");
		mav.addObject("ptMenuList", ptMenuList);
		mav.addObject("categoryList", categoryList);
		return mav;
	}
}