<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/common/header.jsp" %> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<h2 class="sub_tit">
			회원정보수정
		</h2>
		<div class="updateInfo">
			<form action="/member/updateByUser" id="modifyByUserForm" method="post"></form>
			<table id="updateMemberTable">
				<tr>
					<td>아이디</td>
					<td><input name='mb_id' value="<c:out value='${member.mb_id }'/>" readonly="readonly"></td>
				</tr>
				<tr>	
					<td>비밀번호</td>
					<td><input name='mb_pw' value="<c:out value='${member.mb_pw }'/>"></td>
					<td>비밀번호확인</td>
					<td><input value=""></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input class="form-control" name='mb_name' value="<c:out value='${member.mb_name }'/>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td><input name='mb_nickname' value="<c:out value='${member.mb_nickname }'/>"></td>
					<td><input type="submit" value="중복체크"> </td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input class="form-control" name='mb_gender' value="<c:out value='${member.mb_gender }'/>" readonly="readonly"></td>
					<td>회원등급</td>
					<td><input class="form-control" name='mb_grade' value="<c:out value='${member.mb_grade }'/>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input name='mb_phone' value="<c:out value='${member.mb_phone }'/>"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td >
					<input name='mb_email' value="<c:out value='${member.mb_email }'/>">
<!-- 					<select> -->
<!-- 						<option value="naver">naver.com</option> -->
<!-- 						<option value="daum">daum.net</option> -->
<!-- 						<option value="google">google.com</option> -->
<!-- 						<option value="nate">nate.com</option> -->
<!-- 					</select>  -->
					
					</td>
				</tr>
				<tr>
					<td>포인트</td>
					<td><input name='mb_point' value="<c:out value='${member.mb_point }'/>" readonly="readonly"></td>
					<td>회원가입일</td>
					<td><input class="form-control" name='mb_joinDate' value='<fmt:formatDate pattern="yyyy-MM-dd" 
	   			    	            value="${member.mb_joinDate}"/>' readonly="readonly"></td>
				</tr>
				<tr>
					<td>이벤트<br>참여횟수</td>
					<td><input class="form-control" name='mb_eventNum' value="<c:out value='${member.mb_eventNum }'/>" readonly="readonly"></td>
					
				</tr>
				<tr>
					<td>우편번호</td>
					<td>
						<input name='mb_zipcode' value="<c:out value='${member.mb_zipcode }'/>">
					</td>
					<td><input type="submit" value="우편번호찾기"> </td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<input name='mb_addr' value="<c:out value='${member.mb_addr }'/>">
					</td>
				</tr>
				<tr>
					<td>상세주소</td>
					<td>
						<input name='mb_detailAddr' value="<c:out value='${member.mb_detailAddr }'/>">
					</td>
				</tr>
				<tr>
					<td>참고항목</td>
					<td>
						<input name='mb_notes' value="<c:out value='${member.mb_notes }'/>">
					</td>
				</tr>
			</table>
			<div class="member-btn">
				<input type="submit" id="updateBtn" value="수정">
			</div>
		</div>
	</div>
</section>
<script>
var form = $("#modifyByUserForm");
$("#updateBtn").on("click",function(e){
	form.submit();
});
</script>		

<%@include file="/WEB-INF/views/common/footer.jsp" %>