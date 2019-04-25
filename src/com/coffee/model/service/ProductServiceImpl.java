package com.coffee.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.coffee.common.exception.DeleteFailException;
import com.coffee.common.exception.EditFailException;
import com.coffee.common.exception.RegistFailException;
import com.coffee.model.domain.Product;
import com.coffee.model.repository.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	//@Qualifier("mybatisProductDAO")
	private ProductDAO productDAO;

	@Override
	public int insert(Product product) {
		// TODO Auto-generated method stub
		return productDAO.insert(product);
	}

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return productDAO.selectAll();
	}

	@Override
	public Product select(int product_id) {
		// TODO Auto-generated method stub
		return productDAO.select(product_id);
	}

	@Override
	public int update(Product product) {
		// TODO Auto-generated method stub
		return productDAO.update(product);
	}

	@Override
	public int delete(int product_id) {
		// TODO Auto-generated method stub
		return productDAO.delete(product_id);
	}

}
