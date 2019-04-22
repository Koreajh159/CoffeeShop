<%@page import="com.coffee.model.domain.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.coffee.model.domain.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Product product = (Product)request.getAttribute("product");
	List<Category> categoryList = (List)request.getAttribute("categoryList");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=button] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=button]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$($("input[type='button']")[0]).click(function(){
			location.href="/test/product/list";
		});
		$($("input[type='button']")[1]).click(function(){
			edit();
		});
		$($("input[type='button']")[2]).click(function(){
			del();
		});
	})
	function edit(){
		$("form").attr({
			"method":"post",
			"action":"/test/product/update"
		});
		$("form").submit();
	}
	function del(){
		$("form").attr({
			"method":"get",
			"action":"/test/product/delete"
		});
		$("form").submit();
	}
</script>
<body>
<div class="container">
  <form>
  	<input type="hidden" name="product_id" value="<%=product.getProduct_id() %>">
    <input type="text" name="name" value="<%=product.getName()%>">
    <input type="text" name="price" value="<%=product.getPrice()%>">
    <input type="text" name="cost" value="<%=product.getCost()%>">
    <input type="text" name="filename" value="<%=product.getFilename()%>">
    <select name ="category_id">
	  <%for(int i = 0; i < categoryList.size(); i++) {%>
      <%Category category = categoryList.get(i); %>
      <option value=<%=category.getCategory_id()%>><%=category.getCategory_name() %></option>
      <%} %>
    </select>
    <input type="button" value="List">
    <input type="button" value="Edit">
    <input type="button" value="Delete">
  </form>
</div>
</body>
</html>
