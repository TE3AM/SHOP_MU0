<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<div class="subM"><h3>1:1 QNA</h3></div>
		<div class="qna_list">
			<form method="post" action="" id="search">
				<select name="s_select" >
					<option value="">제목+내용</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="answerTF">답변여부</option>
				</select>
				<input type="text" name="s_input">
				<input type="submit" value="검색"> 
			</form>
			<table cellspacing="0" cellpadding="0" class="table">
				<tr class="table_th">
					<th width="80px">번호</th>
					<th width="900px">제목</th>
					<th width="150px">답변여부</th>
					<th width="150px">등록일</th>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="qna_view.do">문의 유형- 제목</a></td>
					<td>미답변</td>
					<td>2021-05-29</td>
				</tr>
				<tr>
					<td>2</td>
					<td><a href="qna_view.do">배송 - 배송언제출발하나요?</a></td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr>
				<tr>
					<td>3</td>
					<td>주문 - 주문했는데 배송지변경해주세요</td>
					<td>답변</td>
					<td>2021-05-19</td>
				</tr>
				<tr>
					<td>4</td>
					<td>결제 - 결제한 카드변경 요청</td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr>
				<tr>
					<td>5</td>
					<td>교환 - 색상변경</td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr>
				<tr>
					<td>6</td>
					<td>반품 - 티셔츠만 반품 요청</td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr>
				<tr>
					<td>7</td>
					<td>상품정보 - 신발사이즈 크게 나온 편인가요??</td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr>
				<tr>
					<td>8</td>
					<td>기타 - 대량구매 문의</td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr>
				<tr>
					<td>9</td>
					<td>기타 - 대량구매 문의</td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr>
				<tr>
					<td>10</td>
					<td>기타 - 대량구매 문의</td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr><!-- 
				<tr>
					<td>10</td>
					<td>기타 - 대량구매 문의</td>
					<td>미답변</td>
					<td>2021-05-02</td>
				</tr> -->
			</table>
			<div class="page">
	            <a href="#fir">처음</a>
	            <a href="#prev">이전</a>
	            <div class="num">
	                <a href="#1" class="click">1</a>
	                <a href="#2">2</a>
	                <a href="#3">3</a>
	                <a href="#4">4</a>
	            </div>
	            <a href="#next">다음</a>
	            <a href="#last">마지막</a>
	        </div>
			<div class="admin_toll">
				<ul>
					<li>
						<a href="qna_write.do">글쓰기</a>
					</li>
				</ul>
			</div>
			
		</div>
	</div>
</section>

<%@ include file="../common/footer.jsp"%>