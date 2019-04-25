<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box
}

/* Set height of body and the document to 100% */
body, html {
	height: 100%;
	margin: 0;
	font-family: Arial;
}

/* Style tab links */
.tablink {
	background-color: #555;
	color: white;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	width: 25%;
}

.tablink:hover {
	background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
	display: none;
	padding: 100px 20px;
	height: 100%;
}

#Member {
	background-color: white;
}

#Product {
	background-color: white;
}

#Franchisee {
	background-color: white;
}

#About {
	background-color: white;
}
</style>
</head>
<body>
	<button class="tablink"
		onclick="openPage('Member', this, '#ddd','white')" id="defaultOpen">Member</button>
	<button class="tablink"
		onclick="openPage('Product', this, 'dodgerblue','white')">Product</button>
	<button class="tablink"
		onclick="openPage('Franchisee', this, 'pink','white')">Franchisee</button>
	<button class="tablink"
		onclick="openPage('About', this, 'orange','white')">About</button>
	<div id="Member" class="tabcontent">
		
	</div>
	<div id="Product" class="tabcontent">
		<%@ include file="/admin/product/list.jsp"%>
	</div>
	<div id="Franchisee" class="tabcontent">
		<%@ include file="/admin/franchisee/franchisee.jsp"%>
	</div>
	<div id="About" class="tabcontent">
		<h3>About</h3>
		<p>Who we are and what we do.</p>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		function openPage(pageName, elmnt, color, fontcolor) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].style.backgroundColor = "";
				tablinks[i].style.color = "";
			}
			document.getElementById(pageName).style.display = "block";
			elmnt.style.backgroundColor = color;
			elmnt.style.color = fontcolor;
		}
		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
</body>
</html>
