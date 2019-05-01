package com.coffee.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coffee.model.domain.Member;
import com.coffee.model.repository.ItemDAO;

@Service
public class ItemServiceImpl implements ItemService{
	@Autowired
	private ItemDAO itemDAO;
	@Override
	public List selectMyCoupon(Member member) {
		// TODO Auto-generated method stub
		return itemDAO.selectMyCoupon(member);
	}

}
