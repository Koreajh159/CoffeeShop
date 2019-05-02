<%@page import="com.coffee.model.domain.Member"%>
<%@page import="com.coffee.common.board.Pager"%>
<%@page import="com.coffee.model.domain.Board"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%!Pager pager=new Pager();%>
<%
	//int currentPage = 1;
	//if(request.getParameter("currentPage")!=null){ //링크를 눌렀다면 바로 그 링크로 넘어온 숫자를 현재 페이지로 대체!!
	//	currentPage = Integer.parseInt((String)request.getAttribute("currentPage"));
	//}
	List<Board> boardList = (List)request.getAttribute("boardList");	
	
	pager.init(request, boardList.size());
	
	
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/inc/css-head.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/top_navi.css">
<style>
.board_table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

.board_th, .board_td {
  
  padding: 16px;
  color:black;
}

.board_tr:nth-child(even) {
  background-color: #ddd;
  color:white;
  
}
input[type=button] {
  background-color: #555;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  text-align:right;
}

input[type=button]:hover {
  background-color: #777;
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
      
   });


   function getDetail(boardId,board,clientGrade,clientId,askId){// 여기에 board 넣어야함
	   if(clientGrade==3||clientId==board||clientId==askId){	  
/* 	   if(client.getGrade().getGrade_id()==3||client.getMember_id()==board.getMember().getMember_id()){	   */
	   		location.href="/client/board/detail?board_id="+boardId;
		}else{
			alert("글을 열람할 수 있는 권한이 없습니다.");
		}
   }
   

   function regist(member_id){
      location.href="/client/board/goRegist";
   }

   </script>

</head>
<body>
 <%@ include file="/inc/header.jsp" %>  


<p></p>
<section class="menu-area section-gap" id="coffee" >
<!-- <div class="section-top-border" > -->
	<div class="row" >
		<div class="col-lg-77 col-md-8" >
		<table class="board_table">
		  <tr class="board_tr" style="text-align: center">
		  	 
		    <th class="board_th" style="width:10%; text-align: center" > No.</th>
		    <th class="board_th" style="width:45%; text-align: left">제목</th>
		    <th class="board_th" style="width:30%;text-align: center ">작성자</th>
		    <th class="board_th" style="width:15%;text-align: center">날짜</th>
		
		  </tr>
		    <%int num=pager.getNum(); %>
		  <%int curPos=pager.getCurPos(); %>
		  <%for(int i=0;i<pager.getPageSize();i++){ %>
			<%if(num<1)break; %>
			<%Board board = boardList.get(curPos++);
				
			%>
		  <tr class="board_tr" onClick="getDetail(<%=board.getBoard_id()%>,<%=board.getMember().getMember_id()%>,<%=client.getGrade().getGrade_id()%>,<%=client.getMember_id()%>,<%=board.getDepth()%>)">
		    <td class="board_td" style="width:10%; text-align: center"><%=num--%></td>
		    <td class="board_td" style="width:45%; text-align: left"><%=board.getTitle() %></td>
		    <td class="board_td" style="width:30%; text-align: center"><%=board.getMember().getName() %></td>
		    <td class="board_td" style="width:15%; text-align: center"><%=board.getDate() %></td>
		
		  </tr>
		
		  <%} %>
		  
		</table>
		</div>
	</div>
		<div class="col-lg-77 col-md-8" style="text-align:center">
		<%for(int i=pager.getFirstPage();i<pager.getLastPage();i++){ %>
		  		<%if(i>pager.getTotalPage())break; %>
		  		<%-- <a href = "/client/board/list?currentPage=<%=i%>">[<%=i %>]</a> <!-- 내가 누른 페이지 번호를 넘기자 --> --%>
		  		[<%=i %>]
		  		<%} %>
		</div>
<div class="col-lg-77 col-md-8" style="text-align:right">
<input type="button" value="등록" onClick="regist()"> 
</div>
</section>
<!-- </div> -->

</body>
</html>