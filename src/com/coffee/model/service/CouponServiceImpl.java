package com.coffee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Item;
import com.coffee.model.repository.CouponDAO;
import com.coffee.model.repository.ItemDAO;
@Service
public class CouponServiceImpl implements CouponService{
	@Autowired
	CouponDAO couponDAO;
	@Autowired
	ItemDAO itemDAO;
	
	@Override
	public void insert(Coupon coupon, Item item) {
		// TODO Auto-generated method stub
		couponDAO.insert(coupon);
		item.setCoupon(coupon);
		itemDAO.insert(item);
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
