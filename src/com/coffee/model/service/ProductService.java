package com.coffee.model.service;

import java.util.List;

import com.coffee.model.domain.Product;

public interface ProductService {
	public int insert(Product product);
	public List selectAll();
	public Product select(int product_id);
<<<<<<< HEAD
	public int update(Product product);
	public int delete(int product_id);
=======
	public List selectByCategory(int category_id);
	public void update(Product product);
	public void delete(int product_id);
>>>>>>> 2dea7c34e2e21c78ef6119056daf24aec9602343
}
