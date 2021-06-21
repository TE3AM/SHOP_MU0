<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/ad_header.jsp"%>

<section>
	<div id="subPage">
		<div class="subM"><h3>MEMBER</h3></div>
		<div class="ad_member_write">
			<table border="1" id="memberManageViewTable">
				<tr>
					<td>아이디</td>
					<td>hong1234</td>
					<td>비밀번호</td>
					<td>password</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>홍길동</td>
					<td>닉네임</td>
					<td>hong</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>여성</td>
					<td>회원등급</td>
					<td><input type="text" value="뉴비"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>010-0000-0000</td>
					<td>이메일</td>
					<td>hong@naver.com</td>
				</tr>
				<tr>
					<td>포인트</td>
					<td><input type="text" value="3000"></td>
					<td>회원가입일</td>
					<td>2021-06-01</td>
				</tr>
				<tr>
					<td>이벤트<br>참여횟수
					</td>
					<td>5</td>
					<td>참고항목</td>
					<td><textarea></textarea></td>
				</tr>
				<tr>
					<td>주소</td>
					<td colspan="3" class="addressArea" align="left"><input
						type="text" value="123-456" id="zipcode"> &nbsp;
						<button>우편번호찾기</button>
						<br> <input type="text" value="서울특별시 성동구 성수동" id="addr"><br>
						<input type="text" value="성수빌딩" id="detailAddr"><br></td>
				</tr>
			</table>
			<div class="member-btn">
				<input type="submit" id="updateMemberBtn" value="수정"> &nbsp; <input
					type="submit" id="deleteMemberBtn" value="삭제">
			</div>
		</div>
	</div>
</section>

<%@ include file="../../common/footer.jsp"%>