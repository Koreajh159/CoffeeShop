<%@page import="com.coffee.model.domain.Board"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
int member_id = (Integer)request.getAttribute("member_id");
//int member_id=2;
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/inc/css-head.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/top_navi.css">
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
  background-color: #555;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=button]:hover {
  background-color: #777;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
.reply{
	border:1px solid #eee;	
}
#cwriter,#cmsg{
	display:inline-block;
	background:yellow;
}
#cwriter{
	width:20%;
}
#cmsg{
	width:75%;
}
</style>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function() {
	$("#bt-regist").click(function() {
		regist();
	});
	$("#bt-list").click(function() {
		location.href="/client/board/list";
	});

});

function regist() {
    $("form").attr({
       method : "post",
       action : "/client/board/doRegist"
    });
    $("form").submit();
 }

</script>

</head>
<body>
<%-- <%@ include file="/inc/header.jsp" %> --%>



<div class="container" style="text-align:center">
  <form >
    <input type="hidden" name="member_id" value="<%=member_id%>">
    <input type="hidden" name="rank" value="1">
    <input type="hidden" name="depth" value="1"> 
    <input type="text"  name="title" placeholder="TITLE">  
    <textarea name="content" style="height:200px" placeholder="CONTENT.."></textarea>

    <input type="button" id = "bt-list" value="목록" >
    <input type="button" id = "bt-regist" value="등록" >

  </form>
  
</body>
</html>