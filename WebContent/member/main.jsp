<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/member/main.jsp</h1>
	<!-- 
	   로그인한 사용자의 경우 사용자 ID를 출력,
	   로그인X 사용자의 경우 로그인페이지로 이동 	   
	 -->
	 <%
	   // 세션정보(ID값 가져오기)
	   String id = (String)session.getAttribute("id");
	   // 로그인 유무 판단 처리 
	   
	   if(id == null){
		  response.sendRedirect("./MemberLogin.me");   
	   }   
	 %>
	
	<h2>사용자 ID :<%=id %></h2> 
	<h2>사용자 ID :${id }</h2> 
	
	<input type="button" value="로그아웃"
	       onclick="location.href='./MemberLogout.me';"
	/>
	<hr>
	<hr>
	<a href="./MemberInfo.me">회원 정보 조회</a>
	<hr>
	<hr>
	<a href="./MemberUpdate.me">회원 정보 수정하기</a>
	<hr>
	<hr>
	<a href="./MemberDelete.me">회원 정보 삭제하기</a>
	<hr>
	<hr>
	<a href="./BoardList.bo">게시판 리스트 이동하기</a>
	<hr>
	<hr>
		<a href="./GoodsList.go">상품 리스트 이동하기 (사용자)</a>
	<hr>
	<hr>
		<a href="./BasketList.ba">장바구니 페이지</a>
	<hr>
	<hr>
		<a href="./OrderList.or">주문 결제 확인 </a>
	<hr>
	<hr>
		
	<%
	 if(id != null){
	  if(id.equals("admin")){
	%>
			<a href="./MemberList.me">회원 정보 목록보기</a>
		<hr>
		<hr>
			<a href="./GoodsAdd.ag">관리자 상품등록</a>
		<hr>
		<hr>
			<a href="./GoodsList.ag">관리자 상품리스트</a>
		<hr>
		<hr>
			<a href="./AdminOrderList.ao">관리자 주문리스트</a>
		
	<%
	  }
	 }
	%>
	
	
	
	
	
	
	
	

</body>
</html>