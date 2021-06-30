package com.springbook.mapper;

import java.util.List;

import com.springbook.domain.Criteria;
import com.springbook.domain.MemberVO;
import com.springbook.domain.findPWDTO;

public interface MemberMapper {
	public void register(MemberVO vo);
	public MemberVO get(int mb_seq);
	public int delete(int mb_seq);
	public int update(MemberVO vo);
	public List<MemberVO> getList();
	public List<MemberVO> getListWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);
	public String findPW(findPWDTO type);
	public int checkIdValidation(String mb_id);
	public int checkPhoneValidation(String mb_phone);
	public MemberVO getUpdateInfo(String mb_id);
	public int updateByUser(MemberVO member);
	
}
