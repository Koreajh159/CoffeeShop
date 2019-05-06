package com.coffee.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.coffee.model.domain.Member;
import com.coffee.model.service.CategoryService;
import com.coffee.model.service.CouponService;
import com.coffee.model.service.ProductService;

@Controller
public class ClientController {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	CouponService couponService;
	@RequestMapping(value="/client/menu/getPage", method=RequestMethod.GET)
	public ModelAndView getMenuPage() {
		List menuList = productService.selectAll();
		List categoryList=categoryService.selectAll();
		ModelAndView mav = new ModelAndView("/client/coffeemenu");
		mav.addObject("menuList", menuList);
		mav.addObject("categoryList", categoryList);
		return mav;
	}
	@RequestMapping(value="/client/point/getPage", method=RequestMethod.GET)
	public ModelAndView getPointPage() {
		List ptMenuList=productService.selectPtAll();
		List categoryList=categoryService.selectAll();
		ModelAndView mav = new ModelAndView("/client/pointmall");
		mav.addObject("ptMenuList", ptMenuList);
		mav.addObject("categoryList", categoryList);
		return mav;
	}
	@RequestMapping(value="/client/item/getPage", method=RequestMethod.GET)
	public ModelAndView getItemPage(HttpServletRequest request) {
		Member member = (Member)request.getSession().getAttribute("client");
		List couponList = couponService.selectByMember(member);
		System.out.println(couponList.size());
		ModelAndView mav = new ModelAndView("/client/member/inventory");
		mav.addObject("couponList", couponList);
		return mav;
	}
}