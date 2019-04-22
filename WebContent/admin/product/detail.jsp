<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function() {
    $($("input[type='button']")[0]).click(function() {
       edit(1);
    });
    $($("input[type='button']")[1]).click(function() {
       del(1);
    });
    $($("input[type='button']")[2]).click(function() {
        getList();
     });
 });

function edit(product_id){
   if (!confirm("수정하시겠어요?")) {
      return;
   }
   $.ajax({
        url : "/admin/products/1",
        type : "put",
        data:{
           product_id:1
         },
        success : function(result) {
          // renderList(JSON.parse(result));
            
        },
        error : function(result) {

        }
     });

   //location.href="/admin.jsp";
   
}

function del(product_id){
   if (!confirm("삭제하시겠어요?")) {
      return;
   }
   $.ajax({
        url : "/admin/products/1",
        type : "delete",
        data:{
           product_id:1
         },
        success : function(result) {
          // renderList(JSON.parse(result));
            
        },
        error : function(result) {

        }
     });
   //location.href="/admin.jsp";
   
   
}

function getList(){
   $.ajax({
        url : "/rest/admin/products",
        type : "get",
        success : function(result) {
            var json = 
        	location.href = "/admin/admin.jsp?List="+List+"";
        }
     });
}

</script>

</head>
<body>

<h2>Product Detail</h2>


<div class="container">
  <form>
    <div class="row">
      <div class="col-25">
        <label for="fname">Product Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="name" name="name" placeholder="상품 이름">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="category">Product Category</label>
      </div>
      <div class="col-75">
        <select id="category" name="category">
          <option value="coffee">Coffee</option>
          <option value="beverage">Beverage</option>
          <option value="tea">Tea</option>
          <option value="juice">Juice</option>
          <option value="ade">Ade</option>
          <option value="dessert">Dessert</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="image">Product Image</label>
        <button>사진찾기</button>
      </div>
      <div class="col-75">
         <img class="sticky" src="/img/header-bg.jpg" alt="Avatar">
      </div>
    </div>
    <div class="row">
      <input type="button" value="수정">
      <input type="button" value="삭제">
      <input type="button" value="목록">
      
    </div>
  </form>
</div>

</body>
</html>