<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestbookVo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8"); // post 방식으로 넘어오는 데이터 처리
	Date now = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String formatedNow = formatter.format(now);
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	vo.setReg_date(formatedNow);
	
	new GuestbookDao().insert(vo);
	response.sendRedirect("/guestbook01");

%> 
</body>
</html>