<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 상세보기</title>
<link rel="stylesheet" href="./css/subpage.css">
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
#updateMemberBtn,#listMemberBtn {
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
	
	<section class="subPage">
		<h2 class="sub_tit">
			회원관리<span class="sub_tit_ko">고객번호 ${member.mb_seq }</span>
		</h2>
		
		<form role="form" action="/member/modify" method="post" id="operForm">
			<input type="hidden" id="mb_seq" name='mb_seq' value="<c:out value='${member.mb_seq }'/>">
			<input type="hidden" name='pageNum' value="${cri.pageNum }">
			<input type="hidden" name="amount" value="${cri.amount }">
			<input type="hidden" name="type" value='<c:out value="${cri.type }"/>'>
			<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }" />'>
		
		</form>
		
	
		<table border="1" id="memberManageViewTable">
			<tr>
				<td>아이디</td>
				<td><input type="text" class="form-control" name='mb_id' value="${member.mb_id }" readonly="readonly"></td>
				<td>비밀번호</td>
				<td><input class="form-control" name='mb_pw' value="${member.mb_pw }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input class="form-control" name='mb_name' value="${member.mb_name }" readonly="readonly"></td>
				<td>닉네임</td>
				<td><input class="form-control" name='mb_nickname' value="${member.mb_nickname }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input class="form-control" name='mb_phone' value="${member.mb_phone }" readonly="readonly"></td>
				<td>성별</td>
				<td><input class="form-control" name='mb_gender' value="${member.mb_gender }" readonly="readonly"></td>
				
			</tr>
			<tr>
				<td>회원등급</td>
				<td><input class="form-control" name='mb_grade' value="${member.mb_grade }" readonly="readonly"></td>
				<td>이메일</td>
				<td><input class="form-control" name='mb_email' value="${member.mb_email }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>포인트</td>
				<td><input class="form-control" name='mb_point' value="${member.mb_point }" readonly="readonly"></td>
				<td>회원가입일</td>
				<td><input class="form-control" name='mb_joinDate' value='<fmt:formatDate pattern="yyyy/MM/dd" 
	   			    	            value="${member.mb_joinDate}"/>' readonly="readonly"></td>
			</tr>
			<tr>
				<td>이벤트<br>참여횟수</td>
				<td><input class="form-control" name='mb_eventNum' value="${member.mb_eventNum }" readonly="readonly"></td>
				<td>참고항목</td>
				<td><textarea class="form-control" name="mb_notes" readonly="readonly">${member.mb_notes }</textarea>
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="3" class="addressArea" align="left">
				
					<input type="text" value="${member.mb_zipcode }" name="mb_zipcode" readonly="readonly"> &nbsp; <button>우편번호찾기</button><br>
					<input type="text" value="${member.mb_addr }" name="mb_addr" readonly="readonly"><br>
					<input type="text" value="${member.mb_detailAddr }" name="mb_detailAddr" readonly="readonly"><br>
				</td>
			</tr>		
		</table>
		<div class="member-btn">
			<button type="submit" data-oper='modify' id="updateMemberBtn">수정</button>
			&nbsp;
			<button type="submit" data-oper='list' id="listMemberBtn">목록</button>
			
		</div>
	</section>
	
<%-- 	<jsp:include page="includes/footer.html"></jsp:include> --%>
<script>
$(document).ready(function(){
	//태그 선택자
	var operForm=$("#operForm");//form 요소의 정보
	
	$("button[data-oper='modify']").on('click',function(e){
		e.preventDefault();
		operForm.attr("action","/member/modify").submit();
	});
	$("button[data-oper='list']").on('click',function(e){
		e.preventDefault();
		operForm.find("#mb_seq").remove();
		operForm.attr("action","/member/list");
		operForm.submit();
	});
	
	
});
</script>

</body>
</html>