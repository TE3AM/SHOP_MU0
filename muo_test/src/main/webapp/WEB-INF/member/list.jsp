<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>회원관리 LIST</title>
<!-- <link rel="stylesheet" href="./css/subpage.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>

/* MemberManageList */
.searchdiv{
	text-align: right;
	padding-bottom: 30px;
	padding-right:120px;
	
}
.searchdiv input{
	font-size: 17px;
}

#memberManageTable {
	text-align: center;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
}

#memberManageTable th {
	background-color: #000;
	color: #fff;
	height: 70px;
	width: 10%
}

#memberManageTable td {
	height: 40px;
}

#updateBtn {
	color: #fff;
	font-weight: bold; background-color : #ff712b;
	border-color: #ff712b;
	border-radius: 8px;
	font-size: 11pt;
	padding: 1px 2px 1px 2px;
	background-color: #ff712b;
}
</style>
</head>
<body>
<%-- 	<jsp:include page="includes/header.html"></jsp:include> --%>

	<section class="subPage">
		<h2 class="sub_tit">
			회원관리<span class="sub_tit_ko">회원관리</span>
		</h2>
		
		<div class="searchdiv">
			<form method="get" action="/member/list" id="searchForm">
				<select name="type">
					<option value="id" <c:out value="${pageMaker.cri.type eq 'id'?'selected':'' }"/> >아이디</option>
					<option value="name" <c:out value="${pageMaker.cri.type eq 'name'?'selected':'' }"/>>이름</option>
					<option value="nickname" <c:out value="${pageMaker.cri.type eq 'nickname'?'selected':'' }"/>>닉네임</option>
					<option value="grade" <c:out value="${pageMaker.cri.type eq 'grade'?'selected':'' }"/>>등급</option>
				</select> 
				<input type="text" name='keyword' placeholder="내용을 입력해주세요" value='<c:out value="${pageMaker.cri.keyword }"/>'> 
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
				<input type='hidden' name='amouont' value='${pageMaker.cri.amount }'>
				<button>검색</button>
			</form>
		</div>

		<table border="1" id="memberManageTable">
			<thead>
			<tr>
				<th>고객번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>닉네임</th>
				<th>연락처</th>
				<th>가입일</th>
				<th>등급</th>
				<th>포인트</th>
				<th>이벤트<br>참여횟수
				</th>
				<th>회원관리</th>
			</tr>
			</thead>
			
			<c:forEach items="${memberList }" var="member">
				<tr>
					<td><c:out value="${member.mb_seq }"/></td>
					<td><c:out value="${member.mb_id }"/></td>
					<td><c:out value="${member.mb_name }"/></td>
					<td><c:out value="${member.mb_nickname }"/></td>
					<td><c:out value="${member.mb_phone }"/></td>
					<td><fmt:formatDate value="${member.mb_joinDate }" pattern="yyyy-MM-dd" /></td>
					<td><c:out value="${member.mb_grade }"/></td>
					<td><c:out value="${member.mb_point }"/></td>
					<td><c:out value="${member.mb_eventNum }"/></td>
					<td><input type="button" value="조회" id="updateBtn" class="move"></td>
				</tr>	
			</c:forEach>
			</table>

		
		<div>
		 <ul class="pagination">
  		      
  		      <c:if test="${pageMaker.prev}">
  		      <li class="paginate_button previous" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_previous">
  		      <a href="${pageMaker.startPage -1}">Previous</a></li>
  		      </c:if>
  		       <c:if test="${!pageMaker.prev}">
  		      <li class="paginate_button previous disabled" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_previous">
  		      <a href="${pageMaker.startPage -1}">Previous</a></li>
  		      </c:if>
  		
  		      <c:forEach var="num"  begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	  		       <c:if test="${num==pageMaker.cri.pageNum}">
	  		       <li class="paginate_button active" aria-controls="dataTables-example" tabindex="0">
	  		        <a href="${num}">${num}</a></li>
	  		       </c:if>
	  		       <c:if test="${num!=pageMaker.cri.pageNum}">
	  		       <li class="paginate_button" aria-controls="dataTables-example" tabindex="0">
	  		        <a href="${num}">${num}</a></li>
	  		       </c:if>
  		      </c:forEach>
  		      
  		      <c:if test="${pageMaker.next}">
  		      <li class="paginate_button next" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_next">
  		      <a href="${pageMaker.endPage + 1}">Next</a></li>
  		      </c:if>
  		      </ul>
		
		</div>
		
		
		<form id="actionForm" action="/member/list" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="type" value="<c:out value='${pageMaker.cri.type }'/>">
			<input type="hidden" name="keyword" value="<c:out value='${pageMaker.cri.keyword }'/>">
		</form>
	</section>

<%-- 	<jsp:include page="includes/footer.html"></jsp:include> --%>
	
	
<script>
	$(document).ready(function(){
		var actionForm=$("#actionForm");
		//수정버튼 눌렀을 때 get으로 이동
		$(".move").on("click",function(e){
				var val=$(this).parent().parent().find("td").eq(0).text();
				actionForm.append("<input type='hidden' name='mb_seq' value="+val+">");
				actionForm.attr("action","/member/get");
				actionForm.submit();
		});
		//페이지 네비게이션 버튼 클릭 시
		$(".paginate_button a").on("click",function(e){
			e.preventDefault();
			console.log("click");
			//클릭한<a>태그의 페이지번호를 actionForm의 input tag에 설정 val(값)
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();//action으로 전송처리
		});
	});

</script>

<!-- 검색 -->
<script>
$(document).ready(function(){
	var searchForm=$("#searchForm");
	$("#searchForm button").on("click",function(e){
		
		if(!searchForm.find("input[name='keyword']").val()){
			alert("검색 키워드를 입력하세요");
			return false;
		}
		
		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();
		
		searchForm.submit();
	});
	
	
});
</script>	
			
</body>
</html>