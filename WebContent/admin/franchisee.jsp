<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.franchisee_table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

.franchisee_th, .franchisee_td {
  text-align: left;
  padding: 16px;
  color:black;
}

.franchisee_tr:nth-child(even) {
  background-color: pink;
  color:white;
}
</style>
</head>
<body>

<h2>Franchisee</h2>
<p></p>

<table class="franchisee_table">
  <tr class="franchisee_tr">
    <th class="franchisee_th"> Name</th>
    <th class="franchisee_th">Last Name</th>
    <th class="franchisee_th">Points</th>
  </tr>
  
  <%for(int i=0;i<5;i++){ %>
  <tr class="franchisee_tr">
    <td class="franchisee_td">Jill</td>
    <td class="franchisee_td">Smith</td>
    <td class="franchisee_td">50</td>
  </tr>
  <%} %>
</table>

</body>
</html>
