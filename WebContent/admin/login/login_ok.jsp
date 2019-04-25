<%@ page contentType="text/html; charset=UTF-8" %>
<%
	session.setAttribute("admin","admin");
	response.sendRedirect("/admin/member/list");
%>