<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 페이지</title>
</head>
<body>
<%
	String sid =(String)session.getAttribute("sessionId");

if(sid != null){
	%>
	
	<h1><%= sid%>님은 로그인 상태 입니다</h1>
	
	<%
}else {
	%>
	
<h1>로그인 하지 않은 상태</h1>
<a href="login.jsp">로그인 바로 가기</a>




<% }%>
</body>
</html>