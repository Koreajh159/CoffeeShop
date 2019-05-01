package com.coffee.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.coffee.model.domain.Member;
import com.coffee.model.repository.ItemDAO;

public class ItemServiceImpl implements ItemService{
	@Autowired
	private ItemDAO itemDAO;
	@Override
	public List selectMyCoupon(Member member) {
		// TODO Auto-generated method stub
		return itemDAO.selectMyCoupon(member);
	}

}
