
package com.springbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*front 확인용--------------*/

@Controller
public class frontController {
	
	@RequestMapping("index")
	public void index() {}
	
	@RequestMapping("login")
	public String login() {
		return "/users/login";
	}
	
	@RequestMapping("join")
	public String join() {
		return "/users/join";
	}
	
	@RequestMapping("man/top")
	public String man_t() {
		return "/shop/man/top";
	}
	
	@RequestMapping("man/bottom")
	public String man_b() {
		return "/shop/man/bottom";
	}
	
	@RequestMapping("man/acc")
	public String man_a() {
		return "/shop/man/acc";
	}
	
	@RequestMapping("woman/top")
	public String woman_t() {
		return "/shop/woman/top";
	}
	
	@RequestMapping("woman/bottom")
	public String woman_b() {
		return "/shop/woman/bottom";
	}
	
	@RequestMapping("woman/acc")
	public String woman_a() {
		return "/shop/woman/acc";
	}
	
	@RequestMapping("woman/onepiece")
	public String woman_o() {
		return "/shop/woman/onepiece";
	}
	
	@RequestMapping("beauty/hair")
	public String beauty_h() {
		return "/shop/beauty/hair";
	}
	
	@RequestMapping("beauty/body")
	public String beauty_b() {
		return "/shop/beauty/body";
	}
	
	@RequestMapping("beauty/perfume")
	public String beauty_p() {
		return "/shop/beauty/perfume";
	}
	
	@RequestMapping("/new")
	public String s_new() {
		return "/shop/new";
	}
	
	@RequestMapping("/best")
	public String s_best() {
		return "/shop/best";
	}
	
	@RequestMapping("/sale")
	public String s_sale() {
		return "/shop/sale";
	}
	
	@RequestMapping("/magazine")
	public String magazine() {
		return "/magazine/list";
	}
	
	@RequestMapping("/admin/index")
	public String ad_index() {
		return "/admin/main";
	}
	
	@RequestMapping("/admin/member")
	public String ad_member() {
		return "/admin/member/list";
	}
	
	@RequestMapping("/admin/member/write")
	public String ad_member_w() {
		return "/admin/member/write";
	}

	@RequestMapping("/admin/order")
	public String ad_order_l() {
		return "/admin/order/list";
	}
	
	@RequestMapping("/admin/order/write")
	public String ad_order_w() {
		return "/admin/order/write";
	}
	
	@RequestMapping("/admin/coupon")
	public String ad_coupon_l() {
		return "/admin/coupon/list";
	}
	
	@RequestMapping("/admin/coupon/write")
	public String ad_coupon_w() {
		return "/admin/coupon/write";
	}
	
	@RequestMapping("/qna")
	public String qna_l() {
		return "/qna/list";
	}

	@RequestMapping("/qna/view")
	public String qna_v() {
		return "/qna/view";
	}
	
	@RequestMapping("/qna/write")
	public String qna_w() {
		return "/qna/write";
	}
	
	@RequestMapping("/notice")
	public String notice_l() {
		return "/notice/list";
	}

	@RequestMapping("/notice/view")
	public String notice_v() {
		return "/notice/view";
	}
	
	@RequestMapping("/notice/write")
	public String notice_w() {
		return "/notice/write";
	}
	
	@RequestMapping("/faq")
	public String faq_l() {
		return "/faq/list";
	}
	
	@RequestMapping("/faq/write")
	public String faq_w() {
		return "/faq/write";
	}
	
	@RequestMapping("/event")
	public String event_l() {
		return "/event/list";
	}

	@RequestMapping("/event/view")
	public String event_v() {
		return "/event/view";
	}
	
	@RequestMapping("/event/write")
	public String event_w() {
		return "/event/write";
	}
	
	@RequestMapping("/coupon")
	public String coupon() {
		return "/coupon/coupon";
	}
	
	
	
}
	