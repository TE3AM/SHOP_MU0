package com.springbook.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	private int startPage;
	private int endPage;
	private boolean prev,next; //갈 수 있는 여부, 초기값 false
	
	private int total;
	private Criteria cri;
	public PageDTO(Criteria cri,int total) {
	
		this.total = total;
		this.cri = cri;
		//파라미터로 넘어온 페이지가 속한 페이지 그룹의 시작페이지/끝페이지 계산
		this.endPage=(int) ((Math.ceil(cri.getPageNum()/10.0))*10);
		this.startPage=this.endPage-9;
		
		//전체 글 목록 갯수로 실제 종료페이지 계산
		int realEnd= (int) (Math.ceil(total*1.0)/cri.getAmount());
	
		//계산식에 의한 종료페이지와 실제 페이지로 종료페이지 재계산
		if(realEnd<this.endPage) {
			this.endPage=realEnd;
		}
		//이전페이지, 다음페이지 활성화 여부 처리
		this.prev=this.startPage>1;
		this.next=this.endPage<realEnd;
		
		
	}
	
	
}
