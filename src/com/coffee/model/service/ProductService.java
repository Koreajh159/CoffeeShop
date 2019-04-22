package com.coffee.model.service;

import java.util.List;

import com.coffee.model.domain.Product;

public interface ProductService {
	public void insert(Product product);
	public List selectAll();
	public Product select(int product_id);
	public void update(Product product);
	public void delete(int product_id);
}
