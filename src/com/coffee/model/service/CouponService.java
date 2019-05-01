package com.coffee.model.service;

import java.util.List;

import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Item;
import com.coffee.model.domain.Member;

public interface CouponService {
	public void insert(Coupon coupon, Item item, Member member);
	public void delete(int coupon_id);
	public void update(Coupon coupon);
}
