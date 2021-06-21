<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/ad_header.jsp"%>

<section>
	<div id="subPage">
		<div class="subM"><h3>ORDER</h3></div>
		<div class="ad_order_list">

			<form method="post" action="" id="search">
				<div align="right" class="ord_search">
					<div align="right" class="datepicker">
		
						<p>
							주문날짜검색 <input type="text" id="datepicker1"> <input
								type="text" id="datepicker2">
						</p>
		
						<select name="order_info" id="order_selcect">
							<option value="">주문번호</option>
							<option value="title">주문자ID</option>
						</select> <input type="text" value="내용을 입력해주세요"> <input type="submit"
							value="검색">
		
					</div>
				</div>
			</form>

			<table align="center">
				<colgroup>
		
					<col style="width: 16%">
					<!-- 주문목록 -->
					<col style="width: 16%">
					<!-- 신규주문 -->
					<col style="width: 16%">
					<!-- 배 송 -->
					<col style="width: 16%">
					<!-- 완 료 -->
					<col style="width: 16%">
					<!-- 교 환 -->
					<col style="width: 17%">
					<!-- 반 품 -->
				</colgroup>
		
				<thead>
		
					<tr>
						<td class=""><a href="#orderlist" class="orderlist_"><span>주문목록</span></a></td>
						<td class=""><a href="#new_order" class="new_order_"><span>신규주문</span></a></td>
						<td class=""><a href="#delivery" class="delivery_"><span>배송</span></a></td>
						<td class=""><a href="#completion" class="completion_"><span>완료</span></a></td>
						<td class=""><a href="#exchange" class="exchange_"><span>교환</span></a></td>
						<td class=""><a href="#return" class="return_"><span>반품</span></a></td>
					</tr>
				</thead>
			</table>
			<table align="center">
				<colgroup>
					<col style="width: 4%">
					<!-- 번호 -->
					<col style="width: 10%">
					<!-- 주문상태 :주문/배송/교환/반품  -->
					<col style="width: 10%">
					<!-- 주문일시-->
					<col style="width: 10%">
					<!-- 주문번호 -->
					<col>
					<!-- 주문상품 -->
					<col style="width: 10%">
					<!-- 주문자ID -->
					<col style="width: 10%">
					<!-- 주문자 -->
					<col style="width: 10%">
					<!-- 결제금액 -->
					<col style="width: 10%">
					<!-- 결제금액 -->
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>주문상태</th>
						<!-- 주문상태 :주문/배송/교환/반품  -->
						<th>주문일시</th>
						<th>주문번호</th>
						<th>주문상품</th>
						<th>주문자ID</th>
						<th>주문자</th>
						<th>결제금액</th>
						<th>주문관리</th>
					</tr>
					<tr>
						<td class=""><strong class="order_no">1</strong></td>
						<td class=""><strong class="order_state">배송</strong></td>
						<td class=""><strong class="order_date">210613</strong></td>
						<td class=""><strong class="order_code">21060225</strong></td>
						<td class=""><strong class="order_product_name">반팔티</strong></td>
						<td class=""><strong class="orderer_id">gong12</strong></td>
						<td class=""><strong class="orderer_name">홍길동</strong></td>
						<td class=""><strong class="order_price">8,000원</strong></td>
						<td class=""><strong class="order_manage"><a href="order_write.do">보기</a></strong></td>
					</tr>
		
					<tr>
						<td class=""><strong class="order_no">2</strong></td>
						<td class=""><strong class="order_state">주문</strong></td>
						<td class=""><strong class="order_date">210113</strong></td>
						<td class=""><strong class="order_code">21062625</strong></td>
						<td class=""><strong class="order_product_name">청바지</strong></td>
						<td class=""><strong class="orderer_id">rong12</strong></td>
						<td class=""><strong class="orderer_name">홍길하</strong></td>
						<td class=""><strong class="order_price">12,000원</strong></td>
						<td class=""><strong class="order_manage"><a href="order_write.do">보기</a></strong></td>
					</tr>
		
		
					<tr>
						<td class=""><strong class="order_no">3</strong></td>
						<td class=""><strong class="order_state">반품</strong></td>
						<td class=""><strong class="order_date">210603</strong></td>
						<td class=""><strong class="order_code">21060232</strong></td>
						<td class=""><strong class="order_product_name">청남방</strong></td>
						<td class=""><strong class="orderer_id">kong12</strong></td>
						<td class=""><strong class="orderer_name">홍길남</strong></td>
						<td class=""><strong class="order_price">9,000원</strong></td>
						<td class=""><strong class="order_manage"><a href="order_write.do">보기</a></strong></td>
					</tr>
				</thead>
			</table>

			<div class="page">
				<a href="#fir">처음</a> <a href="#prev">이전</a>
				<div class="num">
					<a href="#1">1</a> <a href="#2">2</a> <a href="#3">3</a> <a href="#4">4</a>
				</div>
				<a href="#next">다음</a> <a href="#last">마지막</a>
			</div>
		</div>
	</div>
</section>

<%@include file="../../common/footer.jsp"%>