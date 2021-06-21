package com.springbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.domain.Criteria;
import com.springbook.domain.ProductVO;
import com.springbook.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService{
	
	@Setter(onMethod_=@Autowired)
	private ProductMapper mapper;
	
	
	@Override
	public void register(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ProductVO getProduct(int it_number) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(ProductVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remove(int it_number) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<ProductVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
