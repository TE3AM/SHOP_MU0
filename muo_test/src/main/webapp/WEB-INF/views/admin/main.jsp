<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/ad_header.jsp"%>

<section>
	<div id="subPage">
		<div class="admin_main clear_fix">
			<div class="order_container">
				<div class="order_situation">
					<img src="/resources/img/order.png" width="125" height="125">
				</div>
				<div class="line"></div>
				<table class="order_nav">
					<tr>
						<th>신규주문</th>
						<th>배송중</th>
						<th>배송완료</th>
						<th>교환</th>
						<th>반품</th>
					</tr>
					<tr>
						<td>00 건</td>
						<td>00 건</td>
						<td>00 건</td>
						<td>00 건</td>
						<td>00 건</td>
					</tr>
				</table>
			</div>
		
		    <div class="product_container">
				<div class="product_situation">
					<img src="/resources/img/product.png" width="120" height="120">
				</div>
				<div class="line" style="margin-top:10px;"></div>
				<table class="product_nav">
					<tr>
						<th>판매상품</th>
						<th>품절임박상품</th>
						<th>품절</th>
					</tr>
					<tr>
						<td>00 건</td>
						<td>00 건</td>
						<td>00 건</td>
		
					</tr>
				</table>
			</div>
		
			<div class="bottom_container">
				<div class="QNA">
					<h4>1:1문의</h4>
					<ul>
						<!-- jstl 반복 -->
						<li>예시List 1</li>
					</ul>
				</div>
				
				<div class="review">
					<h4>상품후기</h4>
					<ul>
						<!-- jstl 반복 -->
						<li>예시List 1</li>
					</ul>
				</div>
				
				<div class="notice">
					<h4>공지사항</h4>
					<ul>
						<!-- jstl 반복 -->
						<li>예시List 1</li>
					</ul>
				</div>
				
			</div>
		
			<div class="button_collection">
				<button type="button" class="button" onclick="">FAQ</button>
				<button type="button" class="button" onclick="">이벤트</button>
				<button type="button" class="button" onclick="">MAGAZINE</button>
			</div>
		</div>
	</div>
</section>

<%@ include file="../common/footer.jsp"%>