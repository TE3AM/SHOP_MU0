<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../common/header.jsp"%>

<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<div class="subM"><h3>JOIN</h3></div>
		<div class="join">
			<form action="#" method="post" class="clear_fix">
				<ul>
					<li>
						<label for="user_id" class="title">회원아이디</label>
						<input type="text" id="user_id" class="content" placeholder="내용을 입력해주세요">
						<button id="id_check" class="button" onclick="">중복체크</button><br>
					</li>
		
					<li>
						<label for="user_pw" class="title">비밀번호</label>
						<input type="password" id="user_pw" class="content" placeholder="내용을 입력해주세요">&nbsp;
					</li>
		
					<li>
						<label for="user_pw_check" class="title">비밀번호 확인</label>
						<input type="password" id="user_pw_check" class="content" placeholder="내용을 입력해주세요"><br>
					</li>
					
					<li>
						<label for="user_name" class="title">이름</label>
						<input type="text" id="user_name" class="content" placeholder="내용을 입력해주세요"><br>
					</li>
		
					<li>
						<label for="user_phone" class="title">연락처</label>
						<input type="text" id="user_phone" class="content" placeholder="내용을 입력해주세요">
						<button id="phone_check" class="button">중복체크</button><br>
					</li>
		
					<li>
						<label for="gender_m" class="title">성별</label>
						<label><input type="radio" name="gender" value="male" id="gender_m" checked>남</label> &nbsp;
						<label><input type="radio" name="gender" value="female">여</label> <br>
					</li>
		
					<li>
						<label for="user_email" class="title">이메일</label>
						<input type="email" id="user_email" class="content" placeholder="내용을 입력해주세요"> <br>
					</li>
		
					<li>
						<label for="user_postcode" class="title">우편번호</label>
						<input type="text" id="user_postcode" class="content" placeholder="내용을 입력해주세요">
						<input type="button" class="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					</li>
		
					<li>
						<label for="user_roadAddress" class="title">주소</label>
						<input type="text" id="user_roadAddress" class="content" placeholder="내용을 입력해주세요"><br>
					</li>
		
					<li>
						<span id="guide" style="color: #999; display: none"></span>
					</li>
		
					<li>
						<label for="user_detailAddress" class="title">상세주소</label>
						<input type="text" id="user_detailAddress" class="content" placeholder="내용을 입력해주세요"><br>
					</li>
		
					<li>
						<label for="user_extraAddress" class="title">참고항목</label>
						<input type="text" id="user_extraAddress" class="content" placeholder="내용을 입력해주세요"><br>
					</li>
				</ul>
		
				<textarea id="agree" rows="8" cols="130" style="resize: none;">
					<%@include file="agree_text.jsp" %>
				</textarea>
				<br>
		
				<div class="join_check">
					<input type="checkbox" id="join_check" value="join_check">
					<label for="join_check" class="join_check_inner">동의합니다.</label>
				</div>
				
				<div class="admin_toll">
					<ul class="clear_fix">
						<li><input type="reset" value="입력취소" id="cancel" class="button2"></li>
						<li><input type="submit" value="회원가입" id="register" class="button2"></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</section>

<%@ include file="../common/footer.jsp"%>