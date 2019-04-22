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

/* Component-scan 태그가 등록되어 있어야 아래의 컴포넌트를 생성 */
@RestController
@RequestMapping("/rest/admin")
public class AdminProductController {
	@Autowired
	private ProductService productService;
	// DefaultAnnotaionHandlerMapping에 의해 아래의 요청 매핑이 동작가능하다
	@RequestMapping(value="/products", method=RequestMethod.GET)
   public List selectAll() {
      System.out.println("목록을 원하는군");
      List<Product> productList = productService.selectAll();
      return productList;
   }
	@RequestMapping(value = "/products/{product_id}", method = RequestMethod.GET, produces = "application/json")
	public String select(@PathVariable("product_id") int product_id) {
		System.out.println("선택했군");
		return "";
	}

	@RequestMapping(value = "/products", method = RequestMethod.POST)
	public String insert(Product product) {
		System.out.println("등록했군");
		return "redirect:/admin.jsp";
	}

	@RequestMapping(value = "/products/{product_id}", method = RequestMethod.PUT)
	public String update(Product product) {
		System.out.println("수정했군");
		return "";
	}

	@RequestMapping(value = "/products/{product_id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("product_id") int product_id) {
		System.out.println("삭제했군");
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