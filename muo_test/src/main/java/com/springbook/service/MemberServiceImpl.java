package com.springbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.domain.Criteria;
import com.springbook.domain.MemberVO;
import com.springbook.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_= @Autowired)
	private MemberMapper mapper;
	
	@Override
	public void register(MemberVO board) {
		mapper.register(board);
	}

	@Override
	public MemberVO get(int mb_seq) {
		return mapper.get(mb_seq);
	}

	@Override
	public boolean modify(MemberVO member) {
		return mapper.update(member)==1;
	}

	@Override
	public boolean remove(int mb_seq) {
		return mapper.delete(mb_seq)==1;
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
	public String findPW(MemberVO member) {
		return mapper.findPW(member);
	}

	

	
	

}
