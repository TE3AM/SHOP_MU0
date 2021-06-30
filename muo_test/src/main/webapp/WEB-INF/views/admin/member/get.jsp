<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 상세보기</title>
<!-- <link rel="stylesheet" href="./css/subpage.css"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>

/* MemberManageView */
#memberManageViewTable {
	text-align: center;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
}
#memberManageViewTable td{
	width: 5%;
	height: 50px;
}

.member-btn{
	margin: 40px auto 0 auto;
    padding: 10px 0;
    text-align: center;	
}
#updateBtn,#listMemberBtn {
	color: #fff;
	background-color: #ff712b;
	border-radius: 16px;
	font-size: 15pt;
	padding: 6px 12px;
	margin: auto;
	border-color: #ff712b;
	font-weight: bold;
}
#memberManageViewTable td:nth-child(odd) {
	color: #fff;
	background-color: #000;
	font-weight: bold;
}
#memberManageViewTable td:nth-child(even){
font-size:13pt;
}
.addressArea{
	padding:5px 0 5px 10px;
	
}
.addressArea input{
	width: 300px;
	height: 30px;
	font-size:15pt;
}




</style>
</head>
<body>
<%-- 	<jsp:include page="includes/header.html"></jsp:include> --%>
	
	<section >
	<div id="subPage">
		<div class="subM"><h3>회원조회</h3></div>
		

		
	
		<table border="1" id="memberManageViewTable">
			
			<tr>
				<td>고객번호</td>
				<td><input class="form-control" name='mb_seq' value="${member.mb_seq }" readonly="readonly"></td>
				
				<td>이름</td>
				<td><input class="form-control" name='mb_name' value="${member.mb_name }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" class="form-control" name='mb_id' value="${member.mb_id }" readonly="readonly"></td>
				<td>비밀번호</td>
				<td><input class="form-control" name='mb_pw' value="${member.mb_pw }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input class="form-control" name='mb_nickname' value="${member.mb_nickname }" readonly="readonly"></td>
				
				<td>전화번호</td>
				<td><input class="form-control" name='mb_phone' value="${member.mb_phone }" readonly="readonly"></td>
				
			</tr>
			<tr>
				<td>성별</td>
				<td><input class="form-control" name='mb_gender' value="${member.mb_gender }" readonly="readonly"></td>
				
				<td>이메일</td>
				<td><input class="form-control" name='mb_email' value="${member.mb_email }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>회원가입일</td>
				<td><input class="form-control" name='mb_joinDate' value='<fmt:formatDate pattern="yyyy/MM/dd" 
	   			    	            value="${member.mb_joinDate}"/>' readonly="readonly"></td>
    	        <td>회원등급</td>
				<td><input class="form-control" name='mb_grade' value="${member.mb_grade }" readonly="readonly"></td>
				
			</tr>
			<tr>
				<td>포인트</td>
				<td><input class="form-control" name='mb_point' value="${member.mb_point }"></td>
				<td>이벤트<br>참여횟수</td>
				<td><input class="form-control" name='mb_eventNum' value="${member.mb_eventNum }" readonly="readonly"></td>
				
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="3" class="addressArea" align="left">
				
					<input type="text" value="${member.mb_zipcode }" name="mb_zipcode" readonly="readonly"> &nbsp; <button>우편번호찾기</button><br>
					<input type="text" value="${member.mb_addr }" name="mb_addr" readonly="readonly"><br>
					<input type="text" value="${member.mb_detailAddr }" name="mb_detailAddr" readonly="readonly"><br>
					<input type="text" value="${member.mb_notes }" name="mb_notes" readonly="readonly">
					<br>
				</td>
			</tr>		
		</table>
		<div class="member-btn">
			<button type="submit" data-oper='modify' id="updateBtn">수정</button>
			&nbsp;
			<button type="submit" data-oper='list' id="listMemberBtn">목록</button>
			
		</div>
		<form action="/admin/member/modify" method="get" id="infoForm">
			<input type="hidden" id="mb_seq" name='mb_seq' value="${member.mb_seq }">
			<input type="hidden" name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
			<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
			<input type="hidden" name="type" value='<c:out value="${cri.type }"/>'>
			<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }" />'>
		
		</form>
		</div>
	</section>
	
<%-- 	<jsp:include page="includes/footer.html"></jsp:include> --%>
<script>
$(document).ready(function(){
	//태그 선택자
	var operForm=$("#infoForm");//form 요소의 정보
	
	$("#updateBtn").on('click',function(e){
		e.preventDefault();
		//var val= ${member.mb_seq}
		//actionForm.append("<input type='hidden' name='mb_seq' value="+val+">");
		operForm.attr("action","/admin/member/modify");
		operForm.submit();
	});
	$("button[data-oper='list']").on('click',function(e){
		e.preventDefault();
		operForm.find("#mb_seq").remove();
		operForm.attr("action","/admin/member/list");
		operForm.submit();
	});
	
	
});
</script>

</body>
</html>
<%@include file="/WEB-INF/views/common/footer.jsp" %>