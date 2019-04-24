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
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
   $(function() {
      getList();
      $($("input[type='button']")[0]).click(function() {
      		regist();
      });
   });
   //비동기 목록 요청
   function getList() {
      $.ajax({
         url : "/admin/members",
         type : "get",
         success : function(result) {
           // renderList(JSON.parse(result));
         },
         error : function(result) {

         }
      });

   }

   function showDetail(i){// 여기에 member 넣어야함
      $.ajax({
            url:"/admin/members/"+i, //member.member_id여야함 i대신
            type:"get",
            data:{
               member_id:i  //member.member_id여야함 i대신
            },
            success:function(result){

            }
      });
   }
   function regist(){
      location.href="/admin/member/regist.jsp";
   }
</script>
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

  <tr class="member_tr" onClick="showDetail(<%=i%>)"> <!-- i대신 member 넣어야함 -->
    <td class="member_td"><%=i+1%></td>
    <td class="member_td">Smith</td>
    <td class="member_td">50</td>
    <td class="member_td">50</td>
    <td class="member_td">50</td>
  </tr>

  <%} %>
 
</table>
<input type="button" value="등록"> 

</body>
</html>