package com.coffee.model.repository;

import java.util.List;

import com.coffee.model.domain.Franchisee;

public interface FranchiseeDAO {
	public List selectAll();
	public Franchisee select(int franchisee_id);
	public int delete(int franchisee_id);
	public int update(Franchisee franchisee);
}
