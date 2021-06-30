package com.springbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.domain.Criteria;
import com.springbook.domain.MemberVO;
import com.springbook.domain.findPWDTO;
import com.springbook.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_= @Autowired)
	private MemberMapper mapper;
	
	@Override
	public void register(MemberVO member) {
		mapper.register(member);
	}

	@Override
	public MemberVO get(int mb_seq) {
		return mapper.get(mb_seq);
	}

	@Override
	public int modify(MemberVO member) {
		return mapper.update(member);
	}

	@Override
	public int remove(int mb_seq) {
		return mapper.delete(mb_seq);
	}

	@Override
	public List<MemberVO> getListWithPaging(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<MemberVO> getList() {
		return mapper.getList();
	}

	@Override
	public String findPW(findPWDTO type) {
		return mapper.findPW(type);
	}

	@Override
	public int checkIdValidation(String mb_id) {
		return mapper.checkIdValidation(mb_id);
	}

	@Override
	public int checkPhoneValidation(String mb_phone) {
		return mapper.checkPhoneValidation(mb_phone);
	}

	@Override
	public int updateByUser(MemberVO member) {
		return mapper.updateByUser(member);
	}

	@Override
	public MemberVO getUpdateInfo(String mb_id) {
		return mapper.getUpdateInfo(mb_id);
	}

	

	
	

}
