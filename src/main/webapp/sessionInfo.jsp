<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의모든 정보</title>
</head>
<body>

<h2>세션의 모든 정보를 가져오기</h2>
<hr>
<%

	Enumeration<String> sessionAllInfo =session.getAttributeNames();

	while(sessionAllInfo.hasMoreElements()) {
		String sessionName = sessionAllInfo.nextElement().toString();
		
		String sessionValue = session.getAttribute(sessionName).toString();
		
		System.out.println("session의 이름:"+sessionName);
		System.out.println("session의 값:"+sessionValue);
	}

	String jsessionId = session.getId();
	System.out.println("jsessionId의 값"+ jsessionId);

%>
</body>
</html>