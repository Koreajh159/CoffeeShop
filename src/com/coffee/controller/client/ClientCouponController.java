package com.coffee.controller.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Member;
import com.coffee.model.domain.Product;
import com.coffee.model.service.CouponService;

@RestController
public class ClientCouponController {
	@Autowired
	private CouponService couponService;
	
	@RequestMapping(value="/client/coupon/add", method=RequestMethod.POST)
	public Coupon addNewCoupon(int product_id, int ea) {
		Product product = new Product();
		product.setProduct_id(product_id);
		Coupon coupon = new Coupon();
		coupon.setProduct(product);
		coupon.setEa(ea);
		couponService.insert(coupon);
		return coupon;
	}
}
