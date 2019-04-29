<%@page import="com.coffee.model.domain.Franchisee"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Franchisee franchisee=(Franchisee)request.getAttribute("franchisee");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=button] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=button]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
function del(franchisee_id){
	location.href="/delete/"+franchisee_id;
}
$(function(){
	$("#bt-edit").click(function(){
		regist();
	});
});
function regist(){
	$("form").attr({
		action:"/update",
		method:"post"
	});
	$("form").submit();
}

</script>

</head>
<body>

<h3>Contact Form</h3>

<div class="container">
  <form>
	<input type="hidden" name="member_id", value="<%=franchisee.getMember().getMember_id() %>">
	<input type="hidden" name="franchisee_id" value="<%=franchisee.getFranchisee_id() %>">
    <input type="text" name="name" value="<%=franchisee.getName() %>"/>
    <input type="text" name="addr" value="<%=franchisee.getAddr()%>"/>
    <input type="text" name="lati" value="<%=franchisee.getLati()%>"/>
    <input type="text"  name="longi" value="<%=franchisee.getLongi()%>"/>
    <input type="text"  name="cheked" value="<%=franchisee.getChecked()%>"/>
    <input type="text"  name="member_id" value="<%=franchisee.getMember().getName()%>"/>    
  </form>
    <input type="button" value="수정" id="bt-edit">
    <input type="button" value="삭제" onClick="del(<%=franchisee.getFranchisee_id() %>)">
    <input type="button" value="목록">
</div>

</body>
</html>
