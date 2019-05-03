package com.coffee.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.coffee.model.domain.Franchisee;
import com.coffee.model.service.FranchiseeService;
import com.coffee.model.service.MemberService;

@RestController
public class ClientRestFranchiseeController {
	@Autowired
	private FranchiseeService franchiseeService;
	@Autowired
	private MemberService memberService;
	@RequestMapping(value="/client/franchisee/search",method=RequestMethod.GET)
	public List search(Franchisee franchisee) {
		List franchiseeSearchList = franchiseeService.search(franchisee);
		return franchiseeSearchList;
	}
	@RequestMapping(value="/client/franchisee/selectAll")
	public List searchAll(Franchisee franchisee) {
		List franchiseeList = franchiseeService.selectAll();
		return franchiseeList;
	}
}
