<%@page import="com.coffee.common.board.Pager"%>
<%@page import="java.util.List"%>
<%@page import="com.coffee.model.domain.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%!Pager pager = new Pager();%>
<%
   
   List<Product> productList = (List)request.getAttribute("productList");
   pager.init(request, productList.size());
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/top_navi.css" />
<style>
.product_table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

.product_th, .product_td {
  text-align: left;
  padding: 16px;
  color:black;
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

.product_tr:nth-child(even) {
  background-color: pink;
  color:white;
}
</style>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
/* $(function(){
   $($("input[type='button']")[0]).click(function(){
      regist();
   });
}); */


   function regist(){
      location.href="/admin/product/regist.jsp";
      
   }

   
   function showDetail(product_id){
      
      location.href="/admin/product/detail?product_id="+product_id;
   }
   

   </script>
</head>
<body>
<%@include file="/inc/top_navi.jsp" %>
<h2>상품 목록</h2>
<p></p>

<table  class="product_table">
  <tr  class="product_tr">
    <th class="product_th">상품 번호</th>
    <th class="product_th">상품 사진</th>
    <th class="product_th">상품 종류</th>
    <th class="product_th">상품 이름</th>
    <th class="product_th">상품 가격</th>
  </tr>
  <%int num = pager.getNum();
     int curPos = pager.getCurPos();%>
   <%for(int i=0;i<productList.size();i++){ %>
   <%Product product = productList.get(i); %>
   <%if(num<1) break; %>
      <tr class="product_tr" onClick="showDetail(<%=product.getProduct_id() %>)">
         
         <td class="product_td"><%=num-- %></td>
         <td class="product_td"><img src="/data/<%=product.getFilename() %>" widht="50px" height="50px" ></td>
         <td class="product_td"><%=product.getCategory().getCategory_name() %></td>
         <td class="product_td"><%=product.getName() %></td>
         <td class="product_td"><%=product.getPrice() %></td>
         
      </tr>
   <%} %>
   <tr>
      <td colspan="5" style="text-align:center">
        <%for(int i=pager.getFirstPage();i<pager.getLastPage();i++){ %>
        <%if(i>pager.getTotalPage())break; %>
        [<%=i %>]
        <%} %>
        </td>
   </tr>
  <tr class="product_tr">
     <td colspan="4" class="product_td">
        <input class="button" type="button" value="등록" onClick="location.href='/admin/product/goRegist'">
        <input type="text"   name="name"          placeholder="상품 이름 검색"> 
        <input class ="button" type="button" value="검색">
     </td>
  </tr>
</table>
</body>
</html>