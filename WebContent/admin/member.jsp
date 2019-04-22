<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.member_table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

.member_th, .member_td {
  text-align: left;
  padding: 16px;
  color:black;
}

.member_tr:nth-child(even) {
  background-color: #ddd;
  color:white;
  
}

</style>
</head>
<body>

<h2>MEMBER</h2>
<p></p>

<table class="member_table">
  <tr class="member_tr">
    <th class="member_th"> No.</th>
    <th class="member_th">ID</th>
    <th class="member_th">NAME</th>
    <th class="member_th">PHONE</th>
    <th class="member_th">GRADE ID</th>
  </tr>
  
  <%for(int i=0;i<10;i++){ %>
 
  <tr class="member_tr">
    <td class="member_td"><%=i+1%></td>
    <td class="member_td">Smith</td>
    <td class="member_td"><a href='#'>50</a></td>
    <td class="member_td">50</td>
    <td class="member_td">50</td>
  </tr>
  <%} %>
</table>

</body>
</html>
