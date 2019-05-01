package com.coffee.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coffee.common.exception.RegistFailException;
import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Item;
import com.coffee.model.repository.CouponDAO;
import com.coffee.model.repository.ItemDAO;
@Service
public class CouponServiceImpl implements CouponService{
	/*@Autowired
	private TransactionTemplate transactionTemplate;*/
	@Autowired
	private CouponDAO couponDAO;
	@Autowired
	private ItemDAO itemDAO;
	
	@Override
	public void insert(Coupon coupon, Item item) throws RegistFailException{
		// TODO Auto-generated method stub
		/*transactionTemplate.execute(new TransactionCallback<Object>() {

			@Override
			public Object doInTransaction(TransactionStatus status) {
				// TODO Auto-generated method stub
				int result1 = couponDAO.insert(coupon);
				item.setCoupon(coupon);
				int result2 = itemDAO.insert(item);
				if(result1==0 || result2==0) {
					throw new RegistFailException("등록 실패");
				}
				return null;
			}
		});*/
		int result1 = couponDAO.insert(coupon);
		item.setCoupon(coupon);
		int result2 = itemDAO.insert(item);
		if(result1==0 || result2==0) {
			throw new RegistFailException("등록 실패");
		}
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
