<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/common/header.jsp" %>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<div class="subM">
			<h3>JOIN</h3>
		</div>
		<div class="join">
			<form role="form" id="registerForm" name="userInfo"
				action="/member/register" method="post" class="clear_fix">
				<ul>
					<li><label for="user_id" class="title"
						onkeydown="inputIdChk()">회원아이디</label> <input type="text"
						id="id_input" name="mb_id" class="content"
						placeholder="내용을 입력해주세요">
<!-- 						<button id="id_check" class="button" onclick="openIDCheck()">중복체크</button> -->
						 <!-- 						아이디 중복 체크 했는지 판단 --> <!-- 						<input type="hidden" name="idDuplication" value="idUncheck"> -->
						<span class="id_input_re_1" style="color: green; display: none;">사용
							가능한 아이디입니다.</span> <span class="id_input_re_2"
						style="color: red; display: none ;">이미 존재하는 아이디입니다.</span>
					</li>

					<li><label for="user_pw" class="title">비밀번호</label> <input
						type="password" name="mb_pw" class="content" id="user_pw"
						placeholder="내용을 입력해주세요">&nbsp;</li>

					<li><label for="user_pw_check" class="title">비밀번호 확인</label> <input
						type="password" name="mb_pw_re" id="user_pw_check" class="content"  id="user_pw_check"
						placeholder="내용을 입력해주세요">
						<span class="pw_input_re_1" style="color: green; display: none;">비밀번호가 다릅니다.</span>
						<span class="pw_input_re_2" style="color: green; display: none ;">비밀번호가 일치합니다.</span>
					</li>

					<li><label for="user_name" class="title">이름</label> <input
						type="text" name="mb_name" class="content"
						placeholder="내용을 입력해주세요"><br></li>

					<li><label for="user_nickname" class="title">닉네임</label> <input
						type="text" name="mb_nickname" class="content"
						placeholder="내용을 입력해주세요"><br></li>

					<li><label for="user_phone" class="title">연락처</label> <input
						type="text" name="mb_phone" class="content"
						placeholder="내용을 입력해주세요" id="phone_input">
<!-- 						<button id="phone_check" class="button">중복체크</button> -->
						<span class="phone_input_re_1" style="color: green; display: none;">사용
							가능한 연락처입니다.</span> <span class="phone_input_re_2"
						style="color: red; display: none ;">이미 가입된 연락처입니다.</span>
						
						<br>
					</li>

					<li><label for="gender_m" class="title">성별</label> <label><input
							type="radio" name="mb_gender" value="남" id="gender_m" checked>남</label>
						&nbsp; <label><input type="radio" name="mb_gender"
							value="여">여</label> <br></li>

					<li><label for="user_email" class="title">이메일</label> <input
						type="email" name="mb_email" class="content"
						placeholder="내용을 입력해주세요"> <br></li>

					<li><label for="user_postcode" class="title">우편번호</label> <input
						type="text" name="mb_zipcode" class="content" id="user_postcode"
						placeholder="내용을 입력해주세요"> <input type="button"
						class="button" onclick="sample6_execDaumPostcode()"
						value="우편번호 찾기"><br>
					</li>

					<li><label for="user_roadAddress" class="title">주소</label> <input
						type="text" name="mb_addr" class="content" id="user_roadAddress"
						placeholder="내용을 입력해주세요"><br></li>

					<li><span id="guide" style="color: #999; display: none"></span>
					</li>

					<li><label for="user_detailAddress" class="title">상세주소</label>
						<input type="text" name="mb_detailAddr" class="content" id="user_detailAddress"
						placeholder="내용을 입력해주세요"><br></li>

					<li><label for="user_extraAddress" class="title">참고항목</label>
						<input type="text" name="mb_notes" class="content" id="user_extraAddress"
						placeholder="내용을 입력해주세요"><br></li>
				</ul>

				<textarea id="agree" rows="8" cols="130" style="resize: none;">
					<%@include file="agree_text.jsp"%>
				</textarea>
				<br>

				<div class="join_check">
					<input type="checkbox" id="join_check" value="join_check">
					<label for="join_check" class="join_check_inner">동의합니다.</label>
				</div>

				<div class="admin_toll">
					<ul class="clear_fix">
						<li><input type="reset" value="입력취소" id="cancel"
							class="button2"></li>
						<li><input type="submit" value="회원가입" id="register"
							class="button2" onclick="checkValue()"></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
	<div id="wrap"
		style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
			id="btnFoldWrap"
			style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
			onclick="foldDaumPostcode()" alt="접기 버튼">
	</div>


</section>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	// 우편번호 찾기 찾기 화면을 넣을 element
	var element_wrap = document.getElementById('wrap');

	function foldDaumPostcode() {
		// iframe을 넣은 element를 안보이게 한다.
		element_wrap.style.display = 'none';
	}
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("user_extraAddress").value = extraAddr;

						} else {
							document.getElementById("user_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('user_postcode').value = data.zonecode;
						document.getElementById("user_roadAddress").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("user_detailAddress").focus();
					}
				}).open();
	}

	$('#id_input').on("propertychange change keyup paste input", function() {
		//console.log("keyup test");
		var memberId = $('#id_input').val();
		var data = {
			mb_id : memberId
		}// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

		$.ajax({
			type : "post",
			url : "/member/memberIdChk",
			data : data,
			success: function(result){
				console.log("성공여부"+result);
				if(result==='success'){
					$('.id_input_re_1').css("display","inline-block");
					$('.id_input_re_2').css("display","none");
				}if(result==='fail'){
					$('.id_input_re_2').css("display","inline-bolck");
					$('.id_input_re_1').css("display","none");
				}
			}
		}); // ajax 종료
	});
	
	$('#phone_input').on("propertychange change keyup paste input", function() {
		//console.log("keyup test");
		var memberPhone = $('#phone_input').val();
		var data = {
			mb_phone : memberPhone
		}// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

		$.ajax({
			type : "post",
			url : "/member/memberPhoneChk",
			data : data,
			success: function(result){
				console.log("성공여부"+result);
				if(result!='fail'){
					$('.phone_input_re_1').css("display","inline-block");
					$('.phone_input_re_2').css("display","none");
				}else{
					$('.phone_input_re_2').css("display","inline-bolck");
					$('.phone_input_re_1').css("display","none");
				}
			}
		}); // ajax 종료
	});
	//비번 일치하는지 확인
	function checkPW(pw,pw_check){
		if(pw==pw_check){
			$('.pw_input_re_2').css("display","inline-block");
			$('.pw_input_re_1').css("display","none");
		}else{
			$('.pw_input_re_2').css("display","inline-bolck");
			$('.pw_input_re_1').css("display","none");
		}
	}
	checkPW($("#user_pw").val(),$("#user_pw_check").val());

	//회원가입 버튼 눌렀을 때
	function checkValue() {
		var form = document.userInfo;
		if (!form.mb_id.value) {
			alert("아이디를 입력하세요");
			return false;
		}
		if (form.idDuplication.value != "idCheck") {
			alert("아이디 중복체크를 해주세요");
			return false;
		}
		if (!form.mb_pw.value) {
			alert("비밀번호를 입력하세요");
			return false;
		}
		if (form.mb_pw.value != form.mb_pw_re.value) {
			alert("비밀번호를 동일하게 입력하세요");
			return false;
		}
		if (!form.mb_name.value) {
			alert("이름 입력하세요");
			return false;
		}
		if (!form.mb_email.value) {
			alert("메일 주소를 입력하세요.");
			return false;
		}

		if (!form.mb_phone.value) {
			alert("전화번호를 입력하세요.");
			return false;
		}

		if (isNaN(form.mb_phone.value)) {
			alert("전화번호는 - 제외한 숫자만 입력해주세요.");
			return false;
		}

		$("#registerForm").attr("action", "member/register");
		$("#registerForm").submit();

	}
</script>
<%@include file="/WEB-INF/views/common/footer.jsp" %>