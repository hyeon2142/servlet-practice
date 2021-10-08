<%@page import="com.douzone.emaillist.dao.EmaillistDao"%>
<%@page import="com.douzone.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); // post 방식으로 넘어오는 데이터 처리
	
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmaillistDao().insert(vo);
	response.sendRedirect("/emaillist01");
	
	
	
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록되엇습니다.</h1>
</body>
</html>