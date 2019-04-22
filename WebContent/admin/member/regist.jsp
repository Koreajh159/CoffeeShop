<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
   $(function() {
      $($("input[type='button']")[0]).click(function() {
         regist();
         
      });
      $($("input[type='button']")[1]).click(function() {
          getList();
      });
   });


   //산의 주소와 상세정보 채워넣기
   function setData(obj) {
      $($("form").find("input[name='addr']")).val(obj.addr);
      $($("form").find("textarea[name='detail']")).text(obj.detail);

   }

   function regist() {
      $("form").attr({
         method : "post",
         action : "/admin/members"
      });
      $("form").submit();
   }
</script>
</head>
<body>

   <h3>상품 등록</h3>

   <div class="container">
      <form enctype="multipart/form-data">
         <input type="text" id="fname" name="name" placeholder="산 이름"
            style="width: 85%"> 
           

         <input type="text" id="lname" name="addr" placeholder="주소">

         <textarea id="subject" name="detail" placeholder="상세정보"
            style="height: 200px"></textarea>

         <input type="file" name="myFile" /> 
         
         <input type="text" name="lati" placeholder="위도" > 
         <input type="text" name="longi" placeholder="경도" > 
         
         <select name="marker">
            <option value="">마커 선택</option>
            <option value="p1.png">마커1</option>
         </select> 
         <input type="button" value="등록">
          <input type="button" value="목록">
      </form>
   </div>

</body>
</html>