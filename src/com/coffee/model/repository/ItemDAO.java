package com.coffee.model.repository;

import java.util.List;

import com.coffee.model.domain.Item;
import com.coffee.model.domain.Member;

public interface ItemDAO {
	public int insert(Item item);
	public List selectMyCoupon(Member member);
	public int delete(int item_id);
}
