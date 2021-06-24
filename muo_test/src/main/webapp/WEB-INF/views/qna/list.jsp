<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			
			<c:forEach items="${list }" var="lists">
				<tr>
					<td>${lists.qna_bno }</td>
					<td><a href="/qna/view?qna_bno=${lists.qna_bno }">${lists.qna_type } - ${lists.qna_title }</a></td>
					<td>
					<c:if test="${lists.qna_check == 0 }">미답변</c:if>
					<c:if test="${lists.qna_check == 1 }">답변</c:if>
					</td>
					<td>${lists.qna_regdate }</td>
				</tr>
			</c:forEach>
			</table>
			<div class="page">
	            <a href="#fir">처음</a>
	            <a href="#prev">이전</a>
	            <div class="num">
	                <a href="#1" class="click">1</a>
	            </div>
	            <a href="#next">다음</a>
	            <a href="#last">마지막</a>
	        </div>
			<div class="admin_toll">
				<ul>
					<li>
						<a href="/qna/write">글쓰기</a>
					</li>
				</ul>
			</div>
			
		</div>
	</div>
</section>

<%@ include file="../common/footer.jsp"%>