<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String mid = request.getParameter("mid");
	String mpw = request.getParameter("mpw");

// 아이디가 tiger 비번이 12345이면 로그인으로 진행

	if(mid.equals("tiger") && mpw.equals("12345")) {
		// 로그인 성공?  로그인 시킨다는 의미?
		// 로그인의미는 session에 로그인한 유저의 아이디를 저장하는거
		session.setAttribute("sessionId",mid);   // 로그인 체크 후 성공 작업, 유저의 아이디를저장
		session.setAttribute("sessionValid","yes");
		
		// 로그인 성공시 loginSuccess.jsp페이지로 강제[ 이동]
		
		response.sendRedirect("loginSuccess.jsp");
		
		
	}else {
		
		System.out.println("로그인 실패");
		//실패하면 다시 로그인 페이지로
		
		out.println("<script>");
		
		out.println("alert('로그인이 필요하다');");
		out.println("location.href='login.jsp';");
		
		out.println("</script>");
		
		// response.sendRedirect("login.jsp");
	}



%>
</body>
</html>