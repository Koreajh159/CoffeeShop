<%@page import="com.coffee.model.domain.Coupon"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Coupon> couponList = (List<Coupon>)request.getAttribute("couponList");
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/inc/css-head.jsp"%>
<meta charset="UTF-8">
<title>Inventory Page</title>
<style>
.mb-30{
	color : #b68834;
}
.col-lg-77{
	margin:auto;
	margin-top : 30px;
	text-align: center;
}
.row{
	margin:auto;
}
.mt-10{
	margin-top : 30px;
}
.genric-btn{
	width:45%;
	text-align: center;
}
.genric-btn3{
	width:30%;
	text-align: center;
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
					<h2 class="mb-30">보유 쿠폰</h2>
					<form>
						<div class="mt-10">
							<%for(int i = 0 ; i<couponList.size();i++){ %>
							<%} %>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-77 col-md-8">
				<a id="bt-login" class="genric-btn primary-border circle">Login</a>
				<a href="/client/member/index.jsp" class="genric-btn primary-border circle">Cancel</a>
			</div>
			<div class="col-lg-77 col-md-8">
				<a href="/ctest/member/goRegist" class="genric-btn3 primary-border circle">Regist</a>
				<a href="/client/member/findid.jsp" class="genric-btn3 primary-border circle">FindID</a>
				<a href="/client/member/findpw.jsp" class="genric-btn3 primary-border circle">FindPW</a>
			</div>
		</div>
</body>
</html>