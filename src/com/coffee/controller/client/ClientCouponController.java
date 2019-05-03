package com.coffee.controller.client;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Item;
import com.coffee.model.domain.Member;
import com.coffee.model.domain.Product;
import com.coffee.model.service.CouponService;
import com.coffee.model.service.MemberService;
import com.coffee.model.service.ProductService;

@RestController
public class ClientCouponController {
	@Autowired
	private CouponService couponService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/client/coupon/add", method=RequestMethod.POST)
	public String addNewCoupon(int product_id, int ea, HttpServletRequest request) {
		Product product = new Product();
		product.setProduct_id(product_id);
		Coupon coupon = new Coupon();
		coupon.setProduct(product);
		coupon.setEa(ea);
		Item item = new Item();
		Member member = (Member)request.getSession().getAttribute("client");
		item.setMember(member);
		couponService.insert(coupon, item, member);
		
		return "{\"resultCode\":1, \"msg\":\"��� ����\"}";
	}
	
	@RequestMapping(value="/client/product/{product_id}", method=RequestMethod.POST)
	public String isEnoughPt(@PathVariable("product_id") int product_id, int ea, HttpServletRequest request) {
		Member member = (Member)request.getSession().getAttribute("client");
		Product product = productService.select(product_id);
		int checkPt = product.getCost()*ea;
		String result =  "{\"resultCode\":0}";
		System.out.println(checkPt);
		if(member.getPoint()>=checkPt) {
			return "{\"resultCode\":1}";
		}
		return result;
	}
}