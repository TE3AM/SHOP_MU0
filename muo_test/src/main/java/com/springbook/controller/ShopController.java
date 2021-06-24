package com.springbook.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springbook.domain.Criteria;
import com.springbook.domain.PageDTO;
import com.springbook.domain.ProductVO;
import com.springbook.domain.ShopVO;
import com.springbook.service.ShopService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/shop/*")
@Log4j
@AllArgsConstructor
public class ShopController {

	private ShopService service;

	@GetMapping("/list")
	public void list(ShopVO shop,Criteria cri, Model model, HttpServletRequest request) {
		
		  String it_category1 = request.getParameter("c1"); 
		  String it_category2 = request.getParameter("c2"); 
		  //int pageNum =Integer.parseInt(request.getParameter("pageNum"));
		  
			/*
			 * if(request.getParameter("pageNum") == null) { pageNum = 1; }
			 * cri.setPageNum(pageNum);
			 */
		  
		  System.out.println("-------------------------------------");
		  System.out.println(it_category1+","+it_category2);
		  System.out.println("-------------------------------------");
		  
		  Map<String,Object> map = new HashMap<String,Object>();
		  map.put("it_category1", it_category1);
		  map.put("it_category2", it_category2);
		  map.put("cri", cri);
		  
		  List<ProductVO> productlist = service.getList(map);
		  model.addAttribute("list", productlist);
		  
		  System.out.println(productlist);

		int total = service.getTotalCount(map);
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	@GetMapping("/view")
	public void get(Model model, String it_number) {

		ProductVO vo = service.get(it_number);
		model.addAttribute("vo", vo);
		System.out.println(vo);

	}

}
