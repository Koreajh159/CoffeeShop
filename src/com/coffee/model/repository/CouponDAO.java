package com.coffee.model.repository;

import java.util.List;

import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Member;

public interface CouponDAO {
	public int insert(Coupon coupon);
	//public List selectByUser(Member member);
	public int update(Coupon coupon);
	public int delete(int coupon_id);
}
