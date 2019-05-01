package com.coffee.model.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coffee.model.domain.Item;
import com.coffee.model.domain.Member;
@Repository
public class MybatisItemDAO implements ItemDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int insert(Item item) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("Item.insert", item);
	}

	@Override
	public List selectMyCoupon(Member member) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("Item.selectMyCoupon", member);
	}

	@Override
	public int delete(int item_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
