<%@page import="com.coffee.model.domain.Franchisee"%>
<%@page import="com.coffee.common.board.Pager"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%!Pager pager=new Pager();%>
<%List<Franchisee> franchiseeList = (List)request.getAttribute("franchiseeList");%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/top_navi.css">
<style>
.member_table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

.member_th, .member_td {
  text-align: left;
  padding: 16px;
  color:black;
}

.member_tr:nth-child(even) {
  background-color: #ddd;
  color:white;
  
}

</style>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

   $(function() {
      $($("input[type='button']")[0]).click(function() {
        regist();
        });
   });


   function getDetail(franchisee_id){// 여기에 member 넣어야함
	   location.href="/detail?franchisee_id="+franchisee_id;
   }
   

   function regist(){
      location.href="/admin/member/regist.jsp";
   }

   </script>

</head>
<body>
<%@include file="/inc/top_navi.jsp" %>
<h2>MEMBER</h2>
<p></p>

<table class="member_table">
  <tr class="member_tr">
    <th class="member_th"> No.</th>
    <th class="member_th">ID</th>
    <th class="member_th">NAME</th>
    <th class="member_th">PHONE</th>
    <th class="member_th">GRADE ID</th>
  </tr>
    <%int num=pager.getNum(); %>
  <%int curPos=pager.getCurPos(); %>
  <%for(int i=0;i<franchiseeList.size();i++){ %>
	<%Franchisee franchisee = franchiseeList.get(i); %>
  <tr class="member_tr" onClick="getDetail(<%=franchisee.getFranchisee_id()%>)"> <!-- i대신 member 넣어야함 -->
    <td class="member_td"><%=num--%></td>
    <td class="member_td"><%=franchisee.getFranchisee_id() %></td>
    <td class="member_td"><%=franchisee.getName() %></td>
    <td class="member_td"><%=franchisee.getLati() %></td>
    <td class="member_td"><%=franchisee.getLongi()%></td>
  </tr>

  <%} %>
  <tr>
  		<td colspan="5" style="text-align:center">
  		<%for(int i=pager.getFirstPage();i<pager.getLastPage();i++){ %>
  		<%if(i>pager.getTotalPage())break; %>
  		[<%=i %>]
  		<%} %>
  		</td>
  </tr>

</table>
<input type="button" value="등록"> 

</body>
</html>