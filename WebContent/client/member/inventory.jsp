<%@page import="java.util.Date"%>
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
	text-align: center;
}
.genric-btn3{
	width:30%;
	text-align: center;
}
.coupon-detail div{
	display:inline-block;
	align:left;
}
#coupon_id{
	padding : 0px 20px;
}
#coupon_img{
	padding : 10px 20px;
}
#coupon_detail{
	width : 40%;
}
#coupon_ea{
	padding : 0px 20px;
}
.coupon-detail{
	width : 70%;
	display:inline-block;
	align:left;
}
.coupon-control{
	width:25%;
	display:inline-block;
}
.refund-ea{
	width : 30%;
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
							<%Coupon coupon = couponList.get(i); %>
							<%String date = coupon.getRegdate();
								date = date.substring(0,10);
							%>
								<div class="col-lg-12 coupon-border flex-left text-left">
									<div class="coupon-detail">
										<div id="coupon_id"><%=coupon.getCoupon_id() %></div>
										<div id="coupon_img"><img src="/data/<%=coupon.getProduct().getFilename() %>" width="70px"/></div>
										<div id="coupon_detail"><%=coupon.getProduct().getDetail() %></div>
										<div id="coupon_regdate"><%=date %></div>
										<div id="coupon_ea"><%=coupon.getEa() %>개</div>
									</div>
									<div class="coupon-control">
										<input type="text" class="refund-ea"/>
										<a class="genric-btn primary-border circle">환불하기</a>
									</div>
								</div>
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