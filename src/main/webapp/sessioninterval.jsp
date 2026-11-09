<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 유효시간</title>
</head>
<body>
	<%
	int s_time = session.getMaxInactiveInterval();// 유효시간 가져오기 현재 30분
	System.out.println(s_time);
	
	session.setMaxInactiveInterval(10);//초단위,  다른 값으로 변경
	s_time = session.getMaxInactiveInterval();
	System.out.println(s_time);
	
	%>
</body>
</html>