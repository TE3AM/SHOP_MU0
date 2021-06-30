package com.springbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springbook.domain.Criteria;
import com.springbook.domain.MemberVO;
import com.springbook.domain.PageDTO;
import com.springbook.domain.findPWDTO;
import com.springbook.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/member")
@Log4j
@AllArgsConstructor
public class AdminMemberController {
	private MemberService service;

	// 회원 리스트_MemberManageList
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public void list(Model model, Criteria cri) {
		log.info("memberList");
		model.addAttribute("memberList", service.getListWithPaging(cri));

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	// 게시글 상세보기_MemberManageView
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("mb_seq") int mb_seq, Model model, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr) {
		log.info("/get or modify");
		model.addAttribute("member", service.get(mb_seq));
		rttr.addFlashAttribute("result", "");

	}

	// 회원 수정처리_MemberManageView
	@PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		log.info("modify: " + member);

		service.modify(member);
		rttr.addFlashAttribute("result", "modify success");

		// return "redirect:/member/list"+cri.getListLink();
		return "redirect:/admin/member/list";
	}

	// 회원 삭제처리_MemberManageView
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	//@PostMapping("/remove")
	public String remove(@RequestParam("member_seq")int mb_seq, RedirectAttributes rttr) {
		
		log.info("remove: " + mb_seq);
		service.remove(mb_seq);
		rttr.addFlashAttribute("result", "remove success");
//		rttr.addAttribute("pageNum",cri.getPageNum());
//		rttr.addAttribute("amount",cri.getAmount());
		return "redirect:/admin/member/list";
	}

	
	


}
