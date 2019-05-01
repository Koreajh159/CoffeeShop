<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	RuntimeException err = (RuntimeException)request.getAttribute("err");
	err.getMessage();
%>
</body>
</html>