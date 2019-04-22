package com.coffee.model.repository;

import java.util.List;

import com.coffee.model.domain.Coupon;

public interface CouponDAO {
	public int insert(Coupon coupon);
	public List selectAll();
	public int update(Coupon coupon);
	public int delete(int coupon_id);
}
