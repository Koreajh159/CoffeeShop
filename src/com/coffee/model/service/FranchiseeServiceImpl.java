package com.coffee.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coffee.model.domain.Franchisee;
import com.coffee.model.repository.FranchiseeDAO;
@Service
public class FranchiseeServiceImpl implements FranchiseeService{
	@Autowired
	private FranchiseeDAO franchiseeDAO;
	
	
	public List selectAll() {
		return franchiseeDAO.selectAll();
	}
	
	public Franchisee select(int franchisee_id) {
		return franchiseeDAO.select(franchisee_id);	
	}
	public void delete(int franchisee_id) {
		franchiseeDAO.delete(franchisee_id);
		
	}

	public void update(Franchisee franchisee) {
		int result = franchiseeDAO.update(franchisee);
		if(result == 0) {
			System.out.println("�ù�..");
		}
	}

}
