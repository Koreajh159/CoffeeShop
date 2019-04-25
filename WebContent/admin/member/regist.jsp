<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/top_navi.css">
<style>
body {
   font-family: Arial, Helvetica, sans-serif;
}

* {
   box-sizing: border-box;
}

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
 background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 12px 12px;
  font-size: 14px;
  width: 50%;
  
}

input[type=button]:hover{
background-color: #777;
}

.container {
   border-radius: 5px;
   background-color: #f2f2f2;
   padding: 20px;
}
</style>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
   $(function() {
      $($("input[type='button']")[0]).click(function() {
          getList();         
      });
      $($("input[type='button']")[1]).click(function() {
         regist();
      });
   });



   function regist() {
      $("form").attr({
         method : "post",
         action : "/admin/member/regist"
      });
      $("form").submit();
   }

   function getList(){
	   location.href="/admin/member/list";
	}
</script>
</head>
<body>
<%@include file="/inc/top_navi.jsp" %>
   <h3>멤버 등록</h3>

   <div class="container">
      <form >

    <div class="row">
      <div class="col-25">
        <label for="fname">아이디</label>
      </div>
      <div class="col-75">
			<input type="text" name="id" > 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">비밀번호</label>
      </div>
      <div class="col-75">
			<input type="text" name="pass"> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">전화번호</label>
      </div>
      <div class="col-75">
			<input type="text" name="phone"> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">이름</label>
      </div>
      <div class="col-75">
			<input type="text" name="name" > 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">나이</label>
      </div>
      <div class="col-75">
			<input type="text" name="age"> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">포인트</label>
      </div>
      <div class="col-75">
			<input type="text" name="point"> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">회원등급</label>
      </div>
      <div class="col-75">
			<input type="text" name="grade_id" > 
			
      </div>
    </div>
    
   
    <div class="row"><hr></div>
    
    <div class="row">
      <input type="button" value="목록">
      <input type="button" value="등록">
    
    </div>
  </form>
   </div>

</body>
</html>