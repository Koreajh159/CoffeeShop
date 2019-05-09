<%@page import="com.coffee.common.board.Pager"%>
<%@page import="com.coffee.model.domain.Member"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%!Pager pager=new Pager();%>
<%
	//int currentPage = 1;
	//if(request.getParameter("currentPage")!=null){ //링크를 눌렀다면 바로 그 링크로 넘어온 숫자를 현재 페이지로 대체!!
	//	currentPage = Integer.parseInt((String)request.getAttribute("currentPage"));
	//}
	Member admin=(Member)session.getAttribute("admin");
	List<Member> memberList = (List)request.getAttribute("memberList");
	pager.init(request, memberList.size());
%>
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
  padding: 20px;
  color:black;
}



.member_tr:nth-child(even) {
  background-color: #ddd;
  color:white;

}

.button {
  background-color: #555;
  color: white;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 14px;
  width: 150px;
}
.button:hover {
  background-color: #777;
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


   function getDetail(member_id){// 여기에 member 넣어야함
	  
	   location.href="/admin/member/detail?member_id="+member_id;
   }
   

   function regist(){
      location.href="/admin/member/regist.jsp";
   }

   </script>

</head>
<body>
<%@include file="/inc/top_navi.jsp" %>
<hr>
<h2 style="text-align:center">MEMBER</h2>
<p></p>

<table class="member_table">
  <tr class="member_tr">
  	 
    <th class="member_th"> No.</th>
    <th class="member_th">ID</th>
    <th class="member_th">이름</th>
    <th class="member_th">전화번호</th>
    <th class="member_th">등급</th>
  </tr>
    <%int num=pager.getNum(); %>
  <%int curPos=pager.getCurPos(); %>
  <%for(int i=0;i<pager.getPageSize();i++){ %>
	<%if(num<1)break; %>
	<%Member member = memberList.get(curPos++); %>
  <tr class="member_tr" onClick="getDetail(<%=member.getMember_id()%>)"> <!-- i대신 member 넣어야함 -->
    <td class="member_td"><%=num--%></td>
    <td class="member_td"><%=member.getId() %></td>
    <td class="member_td"><%=member.getName() %></td>
    <td class="member_td"><%=member.getPhone() %></td>
    <td class="member_td"><%=member.getGrade().getGrade_name() %></td>
  </tr>

  <%} %>
  <tr>
  		<td colspan="5" style="text-align:center">
  		<%if(pager.getCurrentPage() -1 > 0) {%>
				<a href="/admin/member/list?currentPage=<%=pager.getCurrentPage()-1%>">◀</a>
			<%}else{ %>
				<a href="javascript:alert('처음 페이지입니다');">◀</a>
		<%} %>
  		<%for(int i=pager.getFirstPage();i<pager.getLastPage();i++){ %>
  		<%if(i>pager.getTotalPage())break; %>
  			<a href = "/admin/member/list?currentPage=<%=i%>">[<%=i%>]</a>
  		<%} %>
  		<%if(pager.getCurrentPage() < pager.getTotalPage()) {%>
				<a href="/admin/member/list?currentPage=<%=pager.getCurrentPage()+1%>">▶</a>
		<%}else{ %>
				<a href="javascript:alert('마지막 페이지입니다');">▶</a>
		<%} %>
  		</td>
  </tr>
  <tr class="member_tr">
  	<td colspan="5" style="text-align:left" class="member_td">
		<input class="button" type="button" value="등록"> 
  	</td>
  </tr>
  
 
</table>
<div style="text-align:right">
</div>
</body>
</html>