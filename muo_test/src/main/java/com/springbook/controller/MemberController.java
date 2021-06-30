package com.springbook.controller;

import javax.servlet.http.HttpSession;

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
@RequestMapping("/member")
@Log4j
@AllArgsConstructor
public class MemberController {
	private MemberService service;


	//회원이 정보 수정
	@GetMapping("/updateByUser")
	public void updateByUser(@RequestParam("mb_id")String mb_id,Model model,RedirectAttributes rttr) {
		log.info("updateByUser"+mb_id);
		model.addAttribute("member",service.getUpdateInfo(mb_id));
		rttr.addFlashAttribute("msg", "");
		//return "/member/updateByUser?mb_id="+mb_id;
	}
	@PostMapping("/updateByUser")
	public String updateByUser(@ModelAttribute MemberVO member,
			HttpSession session,
			Model model,
			RedirectAttributes rttr) {
		log.info("updateByUser: "+member);
		//session.setAttribute("member", service.updateByUser(member));
		service.updateByUser(member);
		rttr.addFlashAttribute("msg", "회원정보 수정 완료");
		return "redirect:/member/mypage";
	}
	
	
//----------------------------------------------------------
	// 비번찾기
	@GetMapping("/findPW2")
	public void findPW2() {
	}
	@PostMapping("/findPW2")
	@ResponseBody
	public String findPW2(Model model, @ModelAttribute("dto") findPWDTO dto, RedirectAttributes rttr) {

		log.info("findPW" + dto);

		String result = service.findPW(dto);
		// rttr.addAttribute("result",result);
		log.info(result);
		return result;
		// return "redirect:/member/list";
	}
//----------------------------------------------------------
	// 회원가입
	@GetMapping("/register")
	public void register() {

	}

	// 회원가입 insert_MemberJoin
	// 등록처리
	@PostMapping("/register")
	public String register(MemberVO member, RedirectAttributes rttr) {
		log.info("register: " + member);

		service.register(member);
		System.out.println("신규등록한 고객번호: " + member.getMb_seq());
		rttr.addFlashAttribute("result", member.getMb_seq());// 등록한 고객번호를 list로 전달

		return "redirect:/member/list";
	}

	// 아이디 중복 체크
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChk(String mb_id) {
		int result = service.checkIdValidation(mb_id);// 존재하면 1, 존재 ㄴㄴ 0 리턴
		log.info("결과값: " + result);
		if (result != 0) {
			return "fail";// 중복 아이디 존재
		} else {
			return "success";// 사용가능한 아이디
		}
	}

	// 폰번호 중복 체크
	@RequestMapping(value = "/memberPhoneChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberPhoneChk(String mb_phone) {
		log.info("memberPhoneCHK() 진입");
		int result = service.checkPhoneValidation(mb_phone);// 존재하면 1, 존재 ㄴㄴ 0 리턴
		log.info("결과값: " + result);
		if (result != 0) {
			return "fail";// 중복 번호 존재
		} else {
			return "success";// 사용가능한 폰번호
		}
	}
}
