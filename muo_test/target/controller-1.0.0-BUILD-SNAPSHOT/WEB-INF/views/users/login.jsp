<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<div class="subM"><h3>LOGIN</h3></div>
		<div class="login">
		
		<center>
		 <form action="#" method="post">
		  <ul>
			<li>
				<label for="id" class="title">아이디</label>
				<input type="text" id="user_id" class="content" placeholder="아이디">
			</li>
	
			<li>
				<label for="pw" class="title">비밀번호</label>
				<input type="password" id="user_pw" class="content" placeholder="비밀번호">
			</li>
			
			<li class="button_list">
				<button id="register" class="button" onclick="javascript:location.href='#'">회원가입</button>&nbsp;&nbsp;
				<input type="submit" id="submit" class="button" value="로그인">&nbsp;&nbsp;
				<button id="pw_find" class="button" onclick="javascript:location.href='#'">비밀번호찾기</button>
			</li>
		   </ul>	
		  </form>  
		</center>
	</div>
</section>

<%@ include file="../common/footer.jsp"%>