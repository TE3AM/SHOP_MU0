<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<!-- <link rel="stylesheet" href="./css/subpage.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>

/* findPW */
.inputarea {
	text-align: center;
}
.radioArea {
	padding-bottom: 15px;
}
.n-validation {
	color: red;
	font-size: 12px;
	margin-top: 7px;
}
.n-input {
	width: 250px;
	height: 50px;
	font-size: 20px;
	padding: 0 9px 0 9px;
	border: 1px solid #e5e5e5;
	background-color: #fff;
	font-size: 15px;
	transition: border .2s ease-in-out;
}
.member-btn {
	margin: 40px auto 0 auto;
	padding: 10px 0;
	text-align: center;
}
#findPWBtn {
	color: #fff;
	background-color: #000;
	border-radius: 16px;
	font-size: 15pt;
	padding: 8px 16px;
	margin: auto;
	/* 	position: absolute; */
	/* 	left: 50%; */
}
</style>
</head>
<body>
<%--  	<jsp:include page="includes/header.html"></jsp:include>  --%>
<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<div class="subM">
			<h3>비밀번호 찾기</h3>
		</div>
		<form id="findPWForm" name="findPWInfo" action="/member/findPW2" method="get">
		
		<div class="inputarea">
			<div class="radioArea">
				<input type="radio" id="phoneRadioBtn" name="findPWType" value="phone" checked>
				<label for="phoneRadioBtn" onclick="javascript:changeFndTarget('phone')">휴대폰</label>
				&nbsp;&nbsp; 
				<input type="radio" id="emailRadioBtn" name="findPWType" value="email">
				<label for="emailRadioBtn" onclick="javascript:changeFndTarget('email')">이메일</label>
				
			</div>

			<div class="n-form-item">
				<input class="n-input" type="text" placeholder="아이디 입력"
					id="memberID" name="mb_id" value="<c:out value='${dto.mb_id }'/>">
				<p class="n-validation" id="searchVaildMemberId"
					style="display: block;"></p>
			</div>

			<div class="n-form-item">
				<input class="n-input" type="text" placeholder="이름 입력"
					id="memberNAME" name="mb_name" value="<c:out value='${dto.mb_name }'/>">
				<p class="n-validation" id="searchVaildMemberName"
					style="display: block;"></p>
			</div>

			<div class="n-form-item">
				<input class="n-input" type="text" placeholder="휴대폰번호 입력(-없이)"
					id="memberPHONE" name="mb_phone" value="<c:out value='${dto.mb_phone }'/>">
				<p class="n-validation" id="searchVaildMemberPhone"
					style="display: block;"></p>
			</div>

			<div class="n-form-item">
				<input class="n-input" type="text" placeholder="이메일 입력"
					id="memberEMAIL" name="mb_email" value="<c:out value='${dto.mb_email }'/>">
				<p class="n-validation" id="searchVaildMemberEmail"
					style="display: block;"></p>
			</div>
		</div>

		<div class="member-btn">
			<button type="submit" id="findPWBtn" >비밀번호 찾기</button>
		</div>
		</form>
		</div>
	</section>

<%-- 	<jsp:include page="includes/footer.html"></jsp:include> --%>


<script>
$(document).ready(function(){
	init();//초기화 셋팅

	$("#memberID").on("keyup",function(){
		//입력안됐을 때
		if(!memberIdValidation()){
			$("#searchVaildMemberId").show();
			$("#searchVaildMemberId").text("아이디를 입력해주세요");
			$("#findPWBtn").prop("disabled",true);
		}
		else{
			$("#searchValidMemberId").text('');
			$("#searchValidMemberId").hide();
			if($("#emailRadioBtn").prop("checked")){
				if(emailValidation()){
					$("#findPWBtn").prop("disabled",false);
				}
			}
			
		}
	});
	
	$("#memberNAME").on("keyup",function(){
		$("#memberNAME").val($(this).val().trim());
		if(!isValidMemberName()){//이름입력ㄴ
			$("#searchVaildMemberName").show().text("이름을 입력해주세요");
			$("#findPWBtn").prop("disabled",true);
		}else{
			$("#searchVaildMemberName").hide();
		}
	});
	$("#memberPHONE").on("keyup",function(){
		if(phoneValidation()){
			$("#searchVaildMemberPhone").hide();
		}else{
			$("#searchVaildMemberPhone").show();
			if($(this).val.length<1){
				$("#searchVaildMemberPhone").text("휴대폰번호를 입력해주세요");
				return;
			}
			$("#findPWBtn").prop("disable",true);
		}
	});
	
	$("#memberEMAIL").on("keyup",function(){
		if(emailValidation()){
			$("#searchVaildMemberEmail").hide();
			if(("#memberID").val().length<1){
				$("#findPWBtn").prop("disabled",true);
				return false;
			}
			if(!memberIdValidation()){
				$("#findPWBtn").prop("disabled", true);
			}
		}else{//이메일 형식 안맞을 때
			$("#searchVaildMemberEmail").show();
			if($("#memberEMAIL").val.length<1){
				$("#searchVaildMemberEmail").text("이메일을 입력해 주세요");
				$("#findPWBtn").prop("disabled", true);
				return;
			}
			$("#searchVaildMemberEmail").text("이메일주소 형식이 아닙니다");
			$("#findPWBtn").prop("disabled", true);
		}
		
	});

});
//비밀번호 찾기 버튼 눌렀을 때
//ajax로 데이터 전송
$("#findPWBtn").on("click",function(){
	if ($('#phoneRadioBtn').prop('checked')) {
		$.ajax({
			type:"POST",
			url:"/member/findPW2",
			data:{
				findPWType: $('input[name="findPWType"]:checked').val(),
				mb_id:$("#memberID").val(),
				mb_name:$("#memberNAME").val(),
				mb_phone:$("#memberPHONE").val()
			}, success: function(result){
				console.log(result);
				alert("비밀번호: "+result);
			},error: function(response){
				alert("error");
			}
		});
	}
	if ($('#emailRadioBtn').prop('checked')) {
		$.ajax({
			type:"POST",
			url:"/member/findPW2",
			data:{
				findPWType: $('input[name="findPWType"]:checked').val(),
				mb_id:$("#memberID").val(),
				mb_email:$("#memberEMAIL").val()
			}, success: function(result){
				console.log(result);
				alert("비밀번호: "+result);
			},error: function(response){
				alert("error");
			}
		});
	}
	//var findForm=$("#findPWForm");
	//findForm.attr("action","/member/findPW2").submit();//로그인페이지로 변경
	
});
// $("#findPWBtn").on("click",function(){
// 	var result="<c:out value='${result}'/>";
// 	alert(result);
// });


//--------------------------------------------
//초기값
function init() {
    $("#phoneRadioBtn").prop('checked', true);
    changeFndTarget('phone');
    $("#memberID").val('');
    $("#memberNAME").val('');
    $("#memberPHONE").val('');
    $("#memberEMAIL").val('');
}
//radio 버튼 처리
	var changeFndTarget=function(t){
	switch(t){
	case 'email':
		$("#memberNAME").hide();
		$('#memberPHONE').hide();
		$('#memberID, #memberNAME').val('');
		$("#memberID").show();
        $("#memberEMAIL").show();
        $("#findPWBtn").prop("disabled", true);
        break;
	
	case 'phone':
		$("#memberID").show();
		$('#memberEMAIL').val('');
        $("#memberEMAIL").hide();
        $('#memberPHONE').show();
        $("#memberNAME").show();
        
        $("#findPWBtn").prop("disabled", true);
        break;
	}
	$("#memberID").val('');
    $("#searchValidMemberId").hide();
    $("#searchValidEmail").hide();
    $("#searchValidPhone").hide();
    $(".n-validation").text('');
}
	//이름 적었는지 체크
	 function isValidMemberName() {
        var memberName = $("#memberNAME").val();
        if (!memberName) {
            return false;
        }
        return true;
    }
	//아이디 적었는지 체크
    function memberIdValidation() {
        if (!$("#memberID").val()) {
            return false;
        }
        return true;
    }
    //폰번호 형식체크
    function phoneValidation() {
        var phoneNumber = $('#memberPHONE').val();
        if (phoneNumber === '') {
            return false;
        }
        var regNumber = /^(01[016789])(\d{3,4})(\d{4})/;
        if(!regNumber.test(phoneNumber)){
            $("#memberPHONE").val(phoneNumber.replace(/[^0-9]/g,""));
            return false;
        }

        if (!(phoneNumber.length >= 10 && phoneNumber.length <= 11)) {
            return false;
        }
        if (memberIdValidation() && isValidMemberName()) {
            $("#findPWBtn").prop("disabled", false);
        }
        return true;
    }
  //이메일 형식 체크
    function emailValidation() {
        var email = $('#memberEMAIL').val();
        if (email === '') {
            return false;
        }
        var emailRegExp = new RegExp('^[_a-zA-Z0-9-\\.]+@[\\.a-zA-Z0-9-]+\\.[a-zA-Z]+$');
        if(!emailRegExp.test(email)){
            return false;
        }
        if (memberIdValidation() && $("#memberID").val().length > 0) {
            $("#findPWBtn").prop("disabled", false);
        }
        return true;
    }
    /*타입비교 (비교문자 , 비교형식 ; ex: getTypeCheck(string , "1234567890") ) */
    function getTypeCheck(s, spc) {
        var tempAllowIdValidation = true;
        return tempAllowIdValidation;

        var i;
        for (i = 0; i < s.length; i++) {
            if (spc.indexOf(s.substring(i, i + 1)) < 0) {
                return false;
            }
        }
        return true;
    }


</script>

</body>
</html>
<%@include file="/WEB-INF/views/common/footer.jsp" %>