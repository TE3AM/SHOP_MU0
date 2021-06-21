<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/ad_header.jsp"%>

<section>
	<div id="subPage">
		<div class="subM">
			<h3>MEMBER</h3>
		</div>
		<div class="ad_member_write">
			<div>
				<table border="1" class="coupon_list">
					<tr>
						<th width="100">번호</th>
						<th width="500">쿠폰이름</th>
						<th width="200">금액</th>
						<th width="280">기한</th>
						<th width="200">관리</th>

					</tr>
					<tr>
						<td>1</td>
						<td>무료배송인데 배송비를 주는 2,500원 쿠폰</td>
						<td>2,500</td>
						<td>2021-05-02</td>
						<td><button id="wBtn"
								onclick="location.href='coupon_write.do'">수정</button></td>
					</tr>
					<tr>
						<td>2</td>
						<td>기분이다 8,888쿠폰</td>
						<td>8,888</td>
						<td>2021-05-19</td>
						<td><button id="wBtn"
								onclick="location.href='coupon_write.do'">수정</button></td>
					</tr>
					<tr>
						<td>3</td>
						<td>백만 원 이상 결제 시 15,000 적용가능</td>
						<td>15,000</td>
						<td>2021-05-02</td>
						<td><button id="wBtn"
								onclick="location.href='coupon_write.do'">수정</button></td>
					</tr>
					<tr>
						<td>4</td>
						<td>7만원 이상 구매 시 증정 쿠폰</td>
						<td>5,000</td>
						<td>2021-05-02</td>
						<td><button id="wBtn"
								onclick="location.href='coupon_write.do'">수정</button></td>
					</tr>
					<tr>
						<td>5</td>
						<td>얘 봄감자가 맛있단다</td>
						<td>2,000</td>
						<td>2021-05-02</td>
						<td><button id="wBtn"
								onclick="location.href='coupon_write.do'">수정</button></td>
					</tr>
				</table>
				<br> <br>
				<div data-text-content="true" style="font-size: 14px;"
					class="pageNum">처음 | 이전 1 2 3 4 5 6 7 8 9 10 다음 | 마지막</div>
			</div>
		</div>
		<button id="wBtn" onclick="javascript:location.href='coupon_write.do'");">
               쿠폰생성</button>
		<br>
		<button id="wBtn2" onclick="location.href='">삭제</button>
		<br>
	</div>
</section>

<%@ include file="../../common/footer.jsp"%>