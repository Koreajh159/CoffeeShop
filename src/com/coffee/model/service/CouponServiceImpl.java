package com.coffee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coffee.model.domain.Coupon;
import com.coffee.model.repository.CouponDAO;
@Service
public class CouponServiceImpl implements CouponService{
	@Autowired
	CouponDAO couponDAO;
	
	@Override
	public void insert(Coupon coupon) {
		// TODO Auto-generated method stub
		couponDAO.insert(coupon);
	}

	@Override
	public void delete(int coupon_id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Coupon coupon) {
		// TODO Auto-generated method stub
		
	}

}
