package com.coffee.model.repository;

import java.util.List;

import com.coffee.model.domain.Product;

public interface ProductDAO {
	public int insert(Product product);
	public List selectAll();
	public Product select(int product_id);
	public int update(Product product);
	public int delete(int product_id);
}