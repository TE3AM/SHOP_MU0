package com.springbook.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductVO {
	
	private String it_number;
	private int it_category1;
	private String it_category2;
	private MultipartFile it_img1;
	private MultipartFile it_img2;
	private MultipartFile it_img3;
	private String img1;
	private String img2;
	private String img3;
	private String it_name;
	private int it_baseprice;
	private int it_saleprice;
	private String it_option1;
	private String it_option2;
	private String it_option3;
	private String it_option4;
	private String it_content;
	private int it_sale;
	private int it_remainCount;
	private int it_saleCount;
	private String it_regDate;
}
