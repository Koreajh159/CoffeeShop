package com.coffee.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coffee.common.exception.RegistFailException;
import com.coffee.model.domain.Coupon;
import com.coffee.model.domain.Member;
import com.coffee.model.repository.CouponDAO;
import com.coffee.model.repository.MemberDAO;
@Service
public class CouponServiceImpl implements CouponService{
	/*@Autowired
	private TransactionTemplate transactionTemplate;*/
	@Autowired
	private CouponDAO couponDAO;

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public void insert(Coupon coupon, Member member) throws RegistFailException{
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
		Coupon coupon_check = couponDAO.select(coupon);
		int result1=0;
		if(coupon_check==null) {
			result1 = couponDAO.insert(coupon);
		}else {
			int sum_ea = coupon_check.getEa()+coupon.getEa();
			coupon.setEa(sum_ea);
			result1=couponDAO.update(coupon);
		}
		int remainPoint = member.getPoint()-(coupon.getEa()*coupon.getProduct().getCost());
		member.setPoint(remainPoint);
		System.out.println("현재 멤버의 잔여 포인트"+member.getPoint());
		int result2 = memberDAO.updatePoint(member);
		
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
	@Override
	public List selectByMember(Member member) {
		// TODO Auto-generated method stub
		return couponDAO.selectByMember(member);
	}

}
