<%@page import="com.coffee.model.domain.Board"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
Board board = (Board)request.getAttribute("board");

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

.wrapper {
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

.col-lg-77{
	margin:auto;
	margin-top : 30px;
	text-align: center;
}
.row{
	margin:auto;
}
</style>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function() {
	$("#bt-edit").click(function() {
		edit();
	});
	$("#bt-delete").click(function() {
		del();
	});
	$("#bt-list").click(function() {
		location.href="/client/board/list";
	});
	$("#bt-reply").click(function() {
		reply();
	});

});
function del() {
	if (!confirm("삭제하시겠어요?")) {
		return;
	}
	$("form").attr({
		action : "/client/board/delete",
		method : "post"
	});
	$("form").submit();
}
function edit() {
	if (!confirm("수정하시겠어요?")) {
		return;
	}
	$("form").attr({
		action : "/client/board/edit",
		method : "post"
	});
	$("form").submit();
}
function reply(){
	if (!confirm("답변하시겠어요?")) {
		return;
	}
	$("form").attr({
		action : "/client/board/goReply",
		method : "post"
	});
	$("form").submit();
	
}


</script>

</head>
<body>
<%@ include file="/inc/header.jsp" %> 


<section class="menu-area section-gap" id="coffee" >
<div class="row" >
		<div class="col-lg-77 col-md-8" >
  <form >
    <input type="hidden" name="board_id" value="<%=board.getBoard_id()%>">
    <input type="hidden" name="member_id" value="<%=board.getMember().getMember_id()%>">
    <input type="hidden" name="reply_id" value="<%=client.getMember_id()%>">
    <input type="hidden" name="team" value="<%=board.getTeam()%>">
    <input type="hidden" name="rank" value="<%=board.getRank()%>">
    <input type="hidden" name="depth" value="<%=board.getDepth()%>">
    <input type="text"  name="title" value = "<%=board.getTitle()%>">
    <input type="text"  name="writer" value="<%=board.getMember().getName()%>">
    <input type="text"  name="date" value = "<%=board.getDate()%>">    
    <textarea name="content" style="height:200px"><%=board.getContent()%></textarea> <!-- /textarea를 엔터쳐서 내리면 안되 무조건 한줄!! -->

    <input type="button" id = "bt-list" value="목록보기" >
    <input type="button" id = "bt-edit" value="수정하기" >
    <input type="button" id = "bt-delete" value="삭제하기" >
    <%if(client.getGrade().getGrade_id()==3&&board.getRank()==1){ %>
    <input type="button" id = "bt-reply" value="답글달기" >
    <%} %>
  </form>
 </div> 
 </div>
 </section>
</body>
</html>