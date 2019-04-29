package com.coffee.model.service;

import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Item;

public interface CouponService {
	public void insert(Coupon coupon, Item item);
	public void delete(int coupon_id);
	public void update(Coupon coupon);
}
