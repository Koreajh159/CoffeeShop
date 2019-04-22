<%@ page contentType="text/html; charset=UTF-8"%>
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
  text-align: left;
  padding: 16px;
  color:black;
}

.product_tr:nth-child(even) {
  background-color: dodgerblue;
  color:white;
}
</style>
</head>
<body>

<h2>상품 목록</h2>

<table  class="product_table">
  <tr  class="product_tr">
    <th class="product_th">상품 번호</th>
    <th class="product_th">상품 이름</th>
    <th class="product_th">상품 가격</th>
    <th class="product_th">상품 사진</th>
  </tr>
  <%for(int i=0;i<7;i++){ %>
  <tr class="product_tr">
    <td class="product_td">Jill</td>
    <td class="product_td">Smith<a href="/admin/detail.jsp" ></a></td>
    <td class="product_td">50</td>
    <td class="product_td">50</td>
  </tr>
  <%} %>
  <tr class="product_tr">
     <td colspan="4" class="product_td">
        <button onClick="location.href='/admin/product-regist.jsp';">등록</button>
        <input type="text"   name="name"         placeholder="상품 이름 검색"> 
        <input type="button" value="검색">
     </td>
  </tr>
</table>



</body>
</html>