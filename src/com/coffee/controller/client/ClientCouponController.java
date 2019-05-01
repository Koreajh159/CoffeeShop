package com.coffee.controller.client;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Item;
import com.coffee.model.domain.Member;
import com.coffee.model.domain.Product;
import com.coffee.model.service.CouponService;

@RestController
public class ClientCouponController {
	@Autowired
	private CouponService couponService;
	
	@RequestMapping(value="/client/coupon/add", method=RequestMethod.POST)
	public String addNewCoupon(int product_id, int ea, HttpServletRequest request) {
		Product product = new Product();
		product.setProduct_id(product_id);
		Coupon coupon = new Coupon();
		coupon.setProduct(product);
		coupon.setEa(ea);
		Item item = new Item();
		

		Member member = (Member)request.getSession().getAttribute("client");
		if(member!=null) {
			item.setMember(member);
			couponService.insert(coupon, item);
		}else {
			return "{\"resultCode\":404, \"msg\":\"로그인 필요\"}";
		}
		return "{\"resultCode\":1, \"msg\":\"등록 성공\"}";
	}
}