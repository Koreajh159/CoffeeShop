package com.coffee.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.coffee.common.exception.RegistFailException;
import com.coffee.model.domain.Franchisee;
import com.coffee.model.domain.Member;
import com.coffee.model.service.FranchiseeService;
import com.coffee.model.service.MemberService;

@Controller
public class ClientFranchiseeController {
	@Autowired
	private FranchiseeService franchiseeService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/client/franchisee/goRegist", method=RequestMethod.GET)
	public String goRegist() {
		return "client/franchisee/franchisee";
	}
	@RequestMapping(value="/client/franchisee/regist", method=RequestMethod.POST)
	public String insert(Franchisee franchisee, int member_id) {
		Member member = new Member();
		member.setMember_id(member_id);
		franchisee.setMember(member);
		franchiseeService.insert(franchisee);
		return "index";
	}
	@RequestMapping(value="/client/franchisee/list", method=RequestMethod.GET)
	public ModelAndView selectAll() {
		List franchiseeList = franchiseeService.selectAll();
		ModelAndView mav = new ModelAndView("client/franchisee/franchiseeMap");
		mav.addObject("franchiseeList", franchiseeList);
		return mav;
	}
	@ExceptionHandler(RegistFailException.class)
	public ModelAndView registFail(RegistFailException e) {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("err", e);
		return mav;
	}
}
