<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<section>
	<div class="sub_slider"></div>
	<div id="subPage">
		<div class="subM"><h3>1:1 QNA</h3></div>
		<div class="qna_view">
		    <table class="qna_view_member">
		        <tr class="qna_tit">
		            <th>
		                Q.&nbsp;&nbsp;배송 - 배송 언제 출발하나요?
		                <span class="qna_tit_info">
		                    hong1234&nbsp;|&nbsp;2020.02.25
		                </span>
		            </th>
		        </tr>
		        <tr class="qna_cont">
		            <td>
		                <div class="file"><span>첨부파일</span>2020.02.02.jpg</div>
		                <div name="qna_view_content">
		                    오늘 주문했는데, 배송 언제 출발하나요?
		                </div>
		            </td>
		        </tr>
		    </table>
		    <table class="qna_view_admin">
		        <tr class="qna_tit">
		            <th>
		                A.&nbsp;&nbsp;답변 준비 중
		                <span class="qna_tit_info">
		                    admin&nbsp;|&nbsp;2020.02.25
		                </span>
		            </th>
		        </tr>
		        <tr class="qna_cont">
		            <td>
		                <div name="qna_view_content">
		                    답변 준비 중입니다.
		                </div>
		            </td>
		        </tr>
		    </table>
		    <div class="admin_toll">
			    <ul class="clear_fix">
			    	<li><a href="qna.do">목록</a></li>
			        <li><a href="qna_write.do">수정</a></li>
			        <li><a href="#a2">삭제</a></li>
			        <li><a href="#reply">답변</a></li>
			    </ul>
		    </div>
		    <div class="qna_admin_reply">
		        <a href="#close" class="qna_reply_closeBtn">&#9447;</a>
		        <div class="qna_admin_tit">
		            1:1문의 답변하기
		            <span>-&nbsp;ADMIN</span>
		        </div>
		        <form action="#" method="post">
		            <textarea name="qna_reply" cols="30" rows="10" style="resize: none"></textarea>
		            <input type="submit" value="작성완료">
		            <input type="reset" value="작성취소" class="qna_admin_reset">
		        </form>
		        
		    </div>
    		<div class="qna_admin_replyBg"></div>
   		</div>
	</div>
</section>

<%@ include file="../common/footer.jsp"%>