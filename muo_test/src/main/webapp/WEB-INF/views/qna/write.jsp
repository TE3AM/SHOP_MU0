<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<div class="subM"><h3>1:1 QNA</h3></div>
		<div class="qna_write">

			<form action="" method="post" enctype="multipart/form-data"
				name="registerqna">
				<table class="table">
					<tr>
						<th width="100">문의유형</th>
						<td><select>
								<option value="">문의유형 선택</option>
								<option value="deliver">배송문의</option>
								<option value="order">주문문의</option>
								<option value="payment">결제문의</option>
								<option value="exchange">교환문의</option>
								<option value="refund">반품문의</option>
								<option value="productInfo">상품문의</option>
								<option value="others">기타문의</option>
						</select></td>
					</tr>
					<tr>
						<!-- 				상품정보, 기타문의 제외 -->
						<th>주문번호</th>
						<td><input type="text" name="orderNum" value="ex)1234">
						<input type="button" value="조회"> </td> 
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="writer" value="{member.id}"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" value="제목을 입력해주세요"></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><input type="file" name="fileName"></td>
					</tr>
					<tr>
						<th>문의내용</th>
						<td><textarea name="content" cols="40" rows="10" style="resize:none"></textarea></td>
					</tr>
				</table>
				<div class="admin_toll">
					<ul>
						<li>
							<input type="submit" value="등록">
						</li>
						<li>
							<a href="qna.do">목록</a>
						</li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</section>

<%@ include file="../common/footer.jsp"%>