package com.coffee.model.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coffee.model.domain.Product;
@Repository
public class MybatisProductDAO implements ProductDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int insert(Product product) {
		return sqlSessionTemplate.insert("Product.insert", product);
	}

	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("Product.selectAll");
	}

	@Override
	public Product select(int product_id) {
		return sqlSessionTemplate.selectOne("Product.select", product_id);
	}

	@Override
	public int update(Product product) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("Product.update", product);
	}

	@Override
	public int delete(int product_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("Product.delete", product_id);
	}

	@Override
	public List selectByCategory(int category_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("Product.selectByCategory", category_id);
	}

}
