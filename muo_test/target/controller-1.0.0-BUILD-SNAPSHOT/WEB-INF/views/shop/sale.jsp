<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../common/header.jsp"%>

<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<div class="subM"><h3>SALE</h3></div>
		<div class="item">
			<div class="item_top clear_fix">
				<ul class="item_list_btn clear_fix">
					<li><a href="#">가격 높은순</a></li>
					<li class="sub">|</li>
					<li><a href="#">가격 낮은순</a></li>
					<li class="sub">|</li>
					<li><a href="#">판매순</a></li>
					<li class="sub">|</li>
					<li><a href="#">조회순</a></li>
				</ul>
		
				<form action="#" method="post" class="searchForm clear_fix">
					<input type="submit" id="search_img" value=""><!--<img src="searchButton.PNG" onclick="open();"/> -->
					<input type="text" id="searchForm">
				</form>
			</div>
			<table class="table" cellspacing="0" callpadding="0"> <!-- border="1" -->
				<tr>
					<td>
						<img alt="" src="http://placehold.it/280x305"><br>
						<b>20210625 - 반팔티</b><br>
						15,300원
					</td>
					<td>
						<img alt="" src="http://placehold.it/280x305"><br>
						<b>20210625 - 반팔티</b><br>
						15,300원
					</td>
					<td>
						<img alt="" src="http://placehold.it/280x305"><br>
						<b>20210625 - 반팔티</b><br>
						15,300원
					</td>
					<td>
						<img alt="" src="http://placehold.it/280x305"><br>
						<b>20210625 - 반팔티</b><br>
						15,300원
					</td>
				</tr>
				
			<%-- <c:forEach var="li" items="${list }" varStatus="i">	
			<c:if test="${i.index%4==0 }">
				<tr>
			</c:if>
					<td><a><img src="${a}" width="280px" height="305px"><br>
					<b>${i.count}-${li.name }<b><br>
					${li.price }원</a></td>
					
			</c:forEach> --%>
			</table>
		</div>
	</div>
</section>

<%@include file="../common/footer.jsp"%>