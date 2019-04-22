package com.coffee.controller.admin;

import java.util.List;

import javax.security.auth.login.AccountNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.coffee.model.domain.Product;
import com.coffee.model.service.ProductService;

/* Component-scan �±װ� ��ϵǾ� �־�� �Ʒ��� ������Ʈ�� ���� */
@RestController
@RequestMapping("/rest/admin")
public class AdminProductController {
	@Autowired
	private ProductService productService;
	// DefaultAnnotaionHandlerMapping�� ���� �Ʒ��� ��û ������ ���۰����ϴ�
	@RequestMapping(value="/products", method=RequestMethod.GET)
   public List selectAll() {
      System.out.println("����� ���ϴ±�");
      List<Product> productList = productService.selectAll();
      return productList;
   }
	@RequestMapping(value = "/products/{product_id}", method = RequestMethod.GET, produces = "application/json")
	public String select(@PathVariable("product_id") int product_id) {
		System.out.println("�����߱�");
		return "";
	}

	@RequestMapping(value = "/products", method = RequestMethod.POST)
	public String insert(Product product) {
		System.out.println("����߱�");
		return "redirect:/admin.jsp";
	}

	@RequestMapping(value = "/products/{product_id}", method = RequestMethod.PUT)
	public String update(Product product) {
		System.out.println("�����߱�");
		return "";
	}

	@RequestMapping(value = "/products/{product_id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("product_id") int product_id) {
		System.out.println("�����߱�");
		return "";
	}

	@ExceptionHandler(AccountNotFoundException.class)
	public ModelAndView handleException(AccountNotFoundException e) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/error/errorpage");
		mav.addObject("err", e);
		return mav;
	}
}