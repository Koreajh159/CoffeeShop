package com.coffee.controller.admin;

import java.util.List;

import javax.security.auth.login.AccountNotFoundException;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.coffee.common.exception.DeleteFailException;
import com.coffee.common.exception.EditFailException;
import com.coffee.common.exception.RegistFailException;
import com.coffee.model.domain.Member;
import com.coffee.model.service.MemberService;


@Controller
@RequestMapping("/admin")
public class AdminMemberController {
   
   @RequestMapping(value="/members",method=RequestMethod.GET)
   public String selectAll() {
      System.out.println("ȸ�����");
      return null;
   }
   
   @RequestMapping(value="/members/{member_id}",method=RequestMethod.GET)
   public String select(@PathVariable("member_id") int member_id) {
      System.out.println("�󼼺��� :" +member_id);
      return null;
   }
   
   //����ϱ�
   @RequestMapping(value="/members",method=RequestMethod.POST)
   public String insert(Member member) {
      System.out.println("ȸ�����");
      return "redirect:/admin/member/list.jsp";
   }
   
   //�����ϱ�
   @RequestMapping(value="/members/{member_id}",method=RequestMethod.PUT)
   public String update(Member member) {
      System.out.println("ȸ������");
      return null;
   }
   
   //�����ϱ�
   @RequestMapping(value="/rest/members/{member_id}",method=RequestMethod.DELETE)
   public String delete(@PathVariable("member_id") int member_id) {
      System.out.println("ȸ������");
      return null;
   }
   
   

   @ExceptionHandler(AccountNotFoundException.class)
   public ModelAndView handleException(AccountNotFoundException e) {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("admin/error/errorpage");
      mav.addObject("err", e);

      return mav;

   }

   @ExceptionHandler(RegistFailException.class)
   public String registException(RegistFailException e) {
      StringBuffer sb=new StringBuffer();
      sb.append("{");
      sb.append("\"result\":0");
      sb.append("}");
      return sb.toString();
   }
   @ExceptionHandler(EditFailException.class)
   public String editException(EditFailException e) {
      StringBuffer sb=new StringBuffer();
      sb.append("{");
      sb.append("\"result\":0");
      sb.append("}");
      return sb.toString();
   }
   @ExceptionHandler(DeleteFailException.class)
   public String deleteException(DeleteFailException e) {
      StringBuffer sb=new StringBuffer();
      sb.append("{");
      sb.append("\"result\":0");
      sb.append("}");
      return sb.toString();
   }

}