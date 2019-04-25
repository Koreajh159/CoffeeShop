<%@ page contentType="text/html; charset=UTF-8"%>
<header id="header" id="home">
	<div class="header-top">
		<div class="container">
			<div class="row justify-content-end">
				<div class="col-lg-8 col-sm-4 col-8 header-top-right no-padding">
					<ul>
						<li>Mon-Fri: 8am to 2pm</li>
						<li>Sat-Sun: 11am to 4pm</li>
						<li><a href="tel:(012) 6985 236 7512">(012) 6985 236 7512</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row align-items-center justify-content-between d-flex">
			<div id="logo">
				<a href="${pageContext.request.contextPath}/client/"><img src="${pageContext.request.contextPath}/img/logo.png" alt="" title="" /></a>
			</div>
			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li class="menu-active"><a href="#home">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="/client/menu/getPage">Coffee</a></li>
					<li><a href="/client/point/getPage">PointMall</a></li>
					<li><a href="#blog">Blog</a></li>
					<li class="menu-has-children"><a href="">Pages</a>
						<ul>
							<li><a href="generic.html">Generic</a></li>
							<li><a href="${pageContext.request.contextPath}/backup/elements.html">Elements</a></li>
						</ul></li>
				</ul>
			</nav>
			<!-- #nav-menu-container -->
		</div>
	</div>
</header>

<%@ page contentType="text/html; charset=UTF-8"%>
<!-- #header -->
<script src="${pageContext.request.contextPath}/js/vendor/jquery-2.2.4.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/js/vendor/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
<script src="${pageContext.request.contextPath}/js/easing.min.js"></script>
<script src="${pageContext.request.contextPath}/js/hoverIntent.js"></script>
<script src="${pageContext.request.contextPath}/js/superfish.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.ajaxchimp.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.sticky.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/js/parallax.min.js"></script>
<script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/mail-script.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
