package com.springbook.service;

import java.util.List;

import com.springbook.domain.Criteria;
import com.springbook.domain.MemberVO;
import com.springbook.domain.findPWDTO;



public interface MemberService {
//	public void register(MemberVO board);
	public MemberVO get(int mb_seq);
	public int modify(MemberVO member);
	public int remove(int mb_seq);
	
	public List<MemberVO> getList();
	public List<MemberVO> getListWithPaging(Criteria cri);
	public int getTotal(Criteria cri);
	public void register(MemberVO member);
	
	public String findPW(findPWDTO type);
	public int checkIdValidation(String mb_id);
	public int checkPhoneValidation(String mb_phone);
	
	public int updateByUser(MemberVO member);
	public MemberVO getUpdateInfo(String mb_id);
	
}
