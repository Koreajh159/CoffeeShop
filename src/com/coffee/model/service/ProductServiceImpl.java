package com.coffee.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coffee.common.exception.DeleteFailException;
import com.coffee.common.exception.EditFailException;
import com.coffee.common.exception.RegistFailException;
import com.coffee.model.domain.Product;
import com.coffee.model.repository.ProductDAO;
@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public void insert(Product product) throws RegistFailException{
		int result = productDAO.insert(product);
		if(result == 0) {
			throw new RegistFailException("등록 실패");
		}
	}

	@Override
	public List selectAll() {
		return productDAO.selectAll();
	}

	@Override
	public Product select(int product_id) {
		return productDAO.select(product_id);
	}
	
	@Override
	public List selectByCategory(int category_id) {
		// TODO Auto-generated method stub
		return productDAO.selectByCategory(category_id);
	}

	@Override
	public void update(Product product) throws EditFailException{
		int result = productDAO.update(product);
		if(result == 0) {
			throw new EditFailException("수정 실패"); 
		}
	}

	@Override
	public void delete(int product_id) {
		int result = productDAO.delete(product_id);
		if(result == 0) {
			throw new DeleteFailException("삭제 실패");
		}
	}



}
