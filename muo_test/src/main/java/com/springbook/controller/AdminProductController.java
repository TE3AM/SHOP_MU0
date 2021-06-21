package com.springbook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springbook.domain.Criteria;
import com.springbook.domain.ProductVO;
import com.springbook.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/product/*")
@AllArgsConstructor
public class AdminProductController {

	/* @Setter(onMethod_=@Autowired) */
	private ProductService service;
	
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void list(Model model, Criteria cri) {
		
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public void register(ProductVO vo) {
		
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String register(ProductVO vo, RedirectAttributes rttr) {
		
		service.register(vo);
		rttr.addFlashAttribute(vo.getIt_number());
		
		return "redirect:/admin/product/list";
	}
	
}
