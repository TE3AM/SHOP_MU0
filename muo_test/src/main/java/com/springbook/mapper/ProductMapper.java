package com.springbook.mapper;

import java.util.List;

import com.springbook.domain.Criteria;
import com.springbook.domain.ProductVO;

public interface ProductMapper {
	
	public List<ProductVO> getList();
	
	public List<ProductVO> getListWithPaging(Criteria cri);
	
	public void register(ProductVO vo);
	
	public ProductVO getProduct(int it_number);
	
	public int modify(int it_number);
	
	public int remove(int it_number);
	
	public int getTotalCount(Criteria cri);
	
	public void insertProductKey(ProductVO vo);
}
