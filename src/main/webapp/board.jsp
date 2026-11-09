<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게사판 글쓰기</title>
</head>
<body>


<%
	//로그인 여부를 확인-> 로그인한 유저의 아이디 추출
	// 다운캐스팅-> getAttribute 가 반환하는 값의 타입의 object이니기 때문에
	String loginId = (String)session.getAttribute("sessionId");
	
	if(loginId == null) {//로그인을 안했다는 뜻
		System.out.println("로그인안한 사람이다");
		response.sendRedirect("login.jsp");
	}


%>
	<h2> 게시판 글쓰기</h2>
	<hr>
	<h3>글쓰기가 가능합니다</h3>
	<h3><%=loginId %>님 글쓰기 가능합니다 </h3>
</body>
</html>