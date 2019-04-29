package com.coffee.model.service;

import com.coffee.model.domain.Coupon;

public interface CouponService {
	public void insert(Coupon coupon);
	public void delete(int coupon_id);
	public void update(Coupon coupon);
}
