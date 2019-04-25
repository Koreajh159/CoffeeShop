<%@page import="com.coffee.common.board.Pager"%>
<%@page import="com.coffee.model.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%! Pager pager = new Pager(); %>
<%
	List<Product> productList = (List)request.getAttribute("productList");

%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border: 1px solid #ddd;
}

th, td {
	text-align: left;
	padding: 16px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}
</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	
</script>
<body>
	<table>
		<tr>
			<th style="witdth:10%">No.</th>
			<th style="witdth:20%">상품이름</th>
			<th style="witdth:20%">상품 price</th>
			<th style="witdth:20%">상품 cost</th>
			<th style="witdth:20%">카테고리</th>
		</tr>
		<%int num=pager.getNum(); %>
		<%int curPos = pager.getCurPos(); %>
		<%for(int i = 0; i < pager.getPageSize(); i++) {%>
		<%if(num < 1) break; %>
		<%Product product = productList.get(curPos++); %>
		<tr>
			<td><%=num-- %></td>
			<td><a href="/test/product/detail?product_id=<%=product.getProduct_id()%>"> <%=product.getName() %></a></td>
			<td><%=product.getPrice() %></td>
			<td><%=product.getCost() %></td>
			<td><%=product.getCategory().getCategory_name() %></td>
		</tr>
		<%} %>
		<tr>
			<td colspan="5">
				<input type="button" value="등록" onClick="location.href='/test/product/goRegist'"/>
			</td>
		</tr>
	</table>
</body>
</html>
