<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정하기</title>
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
#updateMemberBtn,#deleteMemberBtn,#listMemberBtn {
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
			관리자 페이지<span class="sub_tit_ko">회원수정</span>
		</h2>
		
		<form action="/admin/member/modify" id="modifyForm" method="post">
		<table border="1" id="memberManageViewTable">
			<tr>
				<td>고객번호</td>
				<td><input class="form-control" name='mb_seq' value="<c:out value='${member.mb_seq }'/>"></td>
				
				<td>이름</td>
				<td><input class="form-control" name='mb_name' value="<c:out value='${member.mb_name }'/>"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" class="form-control" name='mb_id' value="<c:out value='${member.mb_id }'/>"></td>
				<td>비밀번호</td>
				<td><input class="form-control" name='mb_pw' value="<c:out value='${member.mb_pw }'/>" ></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input class="form-control" name='mb_nickname' value="<c:out value='${member.mb_nickname }'/>"></td>
				
				<td>전화번호</td>
				<td><input class="form-control" name='mb_phone' value="<c:out value='${member.mb_phone }'/>"></td>
				
			</tr>
			<tr>
				<td>성별</td>
				<td><input class="form-control" name='mb_gender' value="<c:out value='${member.mb_gender }'/>"></td>
				
				<td>이메일</td>
				<td><input class="form-control" name='mb_email' value="<c:out value='${member.mb_email }'/>"></td>
			</tr>
			<tr>
				<td>회원가입일</td>
				<td><input class="form-control" name='mb_joinDate' value='<fmt:formatDate pattern="yyyy/MM/dd" 
	   			    	            value="${member.mb_joinDate}"/>'></td>
    	        <td>회원등급</td>
				<td><input class="form-control" name='mb_grade' value="<c:out value='${member.mb_grade }'/>"></td>
				
			</tr>
			<tr>
				<td>포인트</td>
				<td><input class="form-control" name='mb_point' value="<c:out value='${member.mb_point }'/>"></td>
				<td>이벤트<br>참여횟수</td>
				<td><input class="form-control" name='mb_eventNum' value="<c:out value='${member.mb_eventNum }'/>"></td>
				
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="3" class="addressArea" align="left">
				
					<input type="text" value="<c:out value='${member.mb_zipcode }'/>" name="mb_zipcode"> &nbsp; <button>우편번호찾기</button><br>
					<input type="text" value="<c:out value='${member.mb_addr }'/>" name="mb_addr"><br>
					<input type="text" value="<c:out value='${member.mb_detailAddr }'/>" name="mb_detailAddr" ><br>
					<input type="text" value="<c:out value='${member.mb_notes }'/>" name="mb_notes">
					<br>
				</td>
			</tr>		
		</table>
		<div class="member-btn">
			<button id="updateMemberBtn">수정</button>
			&nbsp;
			<button type="submit" data-oper='remove' id="deleteMemberBtn">삭제</button>
			&nbsp;
			<button type="submit" data-oper='list' id="listMemberBtn">목록</button>
			
		</div>
		</form>

		<form action="/admin/member/modify" id="modifyInfoForm" method="get">
			<input type="hidden" id="member_seq" name='member_seq' value="<c:out value='${member.mb_seq }'/>">
			<input type="hidden" name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
			<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
			<input type="hidden" name="type" value="${cri.type }">
			<input type="hidden" name="keyword" value="${cri.keyword }">
			
		</form>
	</section>
	
<%-- 	<jsp:include page="includes/footer.html"></jsp:include> --%>
<script>
$(document).ready(function(){
	/* 태그 선택자 */
	var modifyForm = $("#modifyForm");//form 요소의 정보 
	var infoForm=$("#modifyInfoForm");
	/* 목록 페이지 이동 버튼 */
    $("#listMemberBtn").on("click", function(e){
    	e.preventDefault();
    	infoForm.find("#member_seq").remove();
    	infoForm.attr("action", "/admin/member/list").attr("method","get");
    	infoForm.submit();
    });
    
    /* 수정 하기 버튼 */
    $("#updateMemberBtn").on("click", function(e){
    	//e.preventDefault();
        mForm.submit();
    });
    
    /* 삭제 버튼 */
    $("#deleteMemberBtn").on("click",function(e){
    	e.preventDefault();
    	infoForm.attr("action", "/admin/member/remove").attr("method","post");
    	infoForm.submit();
    });
});	

	
	
// 	$('button').on('click',function(e){
// 		/* 기본동작 해제 */
// 		e.preventDefault();
// 		var operation = $(this).data("oper");
		
// 		console.log(operation);
		
// 		if(operation==='remove'){
// 			formObj.attr("action","/member/remove");
// 		}else if(operation==='list'){
//           //move to list
//           formObj.attr("action","/member/list").attr("method","get");
	
//            var pageNumTag = $("input[name='pageNum']").clone();
//            var amountTag = $("input[name='amount']").clone();
			
// 			/* form요소의 input 요소들을 모두 제거 */
// 			formObj.empty();
			
// 			formObj.append(pageNumTag);//<form><input type='hidden' name='pageNum' value='값'>
// 			formObj.append(amountTag);//input type='hidden' name='amount' value='10'></form>
// 		}
// 		/* 액션으로 이동처리 */
// 		formObj.submit();
// 	});

</script>

</body>
</html>
<%@include file="/WEB-INF/views/common/footer.jsp" %>