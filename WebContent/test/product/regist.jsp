<%@page import="com.coffee.model.domain.Category"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Category> categoryList = (List)request.getAttribute("categoryList");
	Category cate = new Category();
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
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$($("input[type='button']")[0]).click(function(){
			regist();
		});
	});
	function regist(){
		$("form").attr({
			"action":"/test/product/regist",
			"method":"post"
		});
		$("form").submit();
	}
</script>
<div class="container">
  <form>
    <input type="text" name="name" placeholder="상품이름...">
    <input type="text" name="price" placeholder="상품가격...">
    <input type="text" name="cost" placeholder="상품 포인트 가격....">
    <input type="text" name="filename" placeholder="일단 파일...">
    <select name ="category_id">
      <%for(int i = 0; i < categoryList.size(); i++) {%>
      <%Category category = categoryList.get(i); %>
      <option value=<%=category.getCategory_id()%>><%=category.getCategory_name() %></option>
      <%} %>
    </select>
    <input type="button" value="Submit">
  </form>
</div>
</body>
</html>
