<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");
	String no = request.getParameter("no");
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="delete.jsp?name=<%=name%>&no=<%=no%>">
		<input type='hidden' name="no" value=""> 
		비밀번호 : <input type="password" name="password"> 
		<input type="submit" value="확인"> 
			<br /> <br /> 
		<a href="/guestbook01">메인으로 돌아가기</a>
		</table>
	</form>
</body>
</html>