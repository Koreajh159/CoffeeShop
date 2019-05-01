<%@page import="com.coffee.common.board.Pager"%>
<%@page import="com.coffee.model.domain.Franchisee"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/inc/css-head.jsp"%>
<meta charset="UTF-8">
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  height : 50%;
  border: 1px solid #ddd;
}

th, td, tr {
  text-align: center;
  padding: 5px;
  border: 1px solid #b68834;
}

tr:nth-child(even) {
  color: #b68834
}
.mb-30{
	color : #b68834;
}
.col-lg-3{
	margin-top : 30px;
}
.col-lg-77{
	margin:auto;
	margin-top : 30px;
	text-align: center;
}
.col-lg-3 {
    flex: 0 0 16%;
    max-width: 25%;
}
.row{
	margin:auto;
}
.mt-10{
	margin-top : 30px;
	border : solid 1px brown;
}
.genric-btn{
	width:45%;
	text-align: center;
}
.d-flex3 {
  display: flex !important;
}
.swtich-p{
	display: inline-block;
	width : 10%;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	
</script>
</head>
<%@ include file="/inc/header.jsp"%>
<body>
	<section class="menu-area section-gap" id="coffee">
		<div class="section-top-border">
			<div class="row">
				<div class="col-lg-77 col-md-8">
					<h2 class="mb-30"><%=client.getName()%>님의 인벤토리</h2>
					<form>
						<div class="mt-10" style="overflow:hidden">
							<table>
								  <tr>
								    <th width="5%">No.</th>
								    <th width="50%">사진</th>
								    <th width="35%">상품명</th>
								    <th width="5%">수량</th>
								  </tr>
								  <tr>
								    <td>1</td>
								    <td>2</td>
								    <td>3</td>
								    <td>4</td>
								  </tr>
								  <tr>
								  	<td colspan=5>
								  		[1]
									</td>
								  </tr>
							</table>
					</form>
				</div>
			</div>
		</div>
</body>
</html>