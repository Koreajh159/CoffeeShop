package com.coffee.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping(value="/client/franchisee/searchAll")
	public List searchAll() {
		List franchiseeList = franchiseeService.searchAll();
		return franchiseeList;
	}

}
