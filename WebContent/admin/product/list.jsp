<%@page import="com.coffee.common.board.Pager"%>
<%@page import="java.util.List"%>
<%@page import="com.coffee.model.domain.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%!Pager pager = new Pager();%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.product_table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border: 1px solid #ddd;
}

.product_th, .product_td {
	text-align: center;
	padding: 16px;
	color: black;
}

.product_tr:nth-child(even) {
	background-color: dodgerblue;
	color: white;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
   getList();
   $($("input[type='button']")[0]).click(function(){
      regist();
   });
});
   //비동기 목록 요청
   function getList() {
      $.ajax({
         url : "/rest/admin/products",
         type : "get",
         success : function(result) {
             alert(result);
         }
      });
   }

   function regist(){
      location.href="/admin/product/regist.jsp";
   }

   function showDetail(product_id){
      $.ajax({
            url : "/rest/admin/products/1",
            type : "get",
            success : function(result) {
              // renderList(JSON.parse(result));
            }
      });
   }
   

   </script>
</head>
<body>

	<h2>상품 목록</h2>

	<table class="product_table">
		<tr class="product_tr">
			<th class="product_th" style="width: 10%">상품 번호</th>
			<th class="product_th" style="width: 25%">상품 이름</th>
			<th class="product_th" style="width: 25%">상품 가격</th>
			<th class="product_th" style="width: 40%">상품 사진</th>
		</tr>
		<%
			for (int i = 0; i < 10; i++) {
		%>
		<tr class="product_tr" onClick="showDetail(<%=i%>)">
			<td class="product_td"><%=i + 1%></td>
			<td class="product_td"><a href="/admin/product/detail.jsp">카페라떼</a></td>
			<td class="product_td">5000</td>
			<td class="product_td">이미지</td>
		</tr>
		<%
			}
		%>
		<tr class="product_tr">
			<td colspan="4" class="product_td"><input type="button"
				value="등록"> <input type="text" name="name"
				placeholder="상품 이름 검색"> <input type="button" value="검색">
			</td>
		</tr>
	</table>
</body>
</html>