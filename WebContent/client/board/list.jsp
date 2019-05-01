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
	int member_id = (Integer)request.getAttribute("member_id");
	
	
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

</style>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

   $(function() {
      
   });


   function getDetail(board_id){// 여기에 board 넣어야함
	  
	   location.href="/client/board/detail?board_id="+board_id;
   }
   

   function regist(member_id){
      location.href="/client/board/regist?member_id="+member_id;
   }

   </script>

</head>
<body>
<%-- <%@ include file="/inc/header.jsp" %>  --%>

<p></p>
<div>
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
  <tr class="board_tr" onClick="getDetail(<%=board.getBoard_id()%>)"> <!-- i대신 board 넣어야함 -->
    <td class="board_td" style="width:10%; text-align: center"><%=num--%></td>
    <td class="board_td" style="width:45%; text-align: left"><%=board.getTitle() %></td>
    <td class="board_td" style="width:30%; text-align: center"><%=board.getMember().getName() %></td>
    <td class="board_td" style="width:15%; text-align: center"><%=board.getDate() %></td>

  </tr>

  <%} %>
  <tr>
  		<td colspan="6" style="text-align:center">
  		<%for(int i=pager.getFirstPage();i<pager.getLastPage();i++){ %>
  		<%if(i>pager.getTotalPage())break; %>
  		<%-- <a href = "/client/board/list?currentPage=<%=i%>">[<%=i %>]</a> <!-- 내가 누른 페이지 번호를 넘기자 --> --%>
  		[<%=i %>]
  		<%} %>
  		</td>
  </tr>
  
 
</table>
</div>
<div style="text-align:right">
<input type="button" value="등록" onClick="regist(<%=member_id%>)"> 
<!-- client.getMember_id() -->
</div>
</body>
</html>