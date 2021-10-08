<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
String password = request.getParameter("password");
String no = request.getParameter("no");
String name = request.getParameter("name");

GuestbookDao dao = new GuestbookDao();
if (dao.delete(Integer.parseInt(no), name, password)) {
	%>
	<script>
		alert("삭제성공!");
		document.location.href="/guestbook01";
	</script>
	<%

	} else {
	%>
	<script>
		alert("비밀번호 불일치!");
		history.back();
	</script>
	<%
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>