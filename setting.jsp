<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

    <title>設定</title>
       <style type="text/css">
       	body{
       	background:rgb(188, 228, 238);
       	overflow: scroll;
       	overflow-x:hidden;
       	}
       	  body::-webkit-scrollbar-track
          {
            border-radius: 10px;
          }

          body::-webkit-scrollbar
          {
            width: 10px;
          }

          body.mainarea::-webkit-scrollbar-thumb
          {
            border-radius: 10px;
            background-color:rgba(108,108,108,0.2);
          }

       	.fristdiv{
       	border-radius:20px;
       	width: 60%;
       	background: #fff;
       	height: 480px;
       	position: absolute;
       	left:20%;
       	top:60px;
       	}
       	#backicon{
       		height: 50px;
            position:absolute;
            left: 20px;
            top:10px;
       	}
       	#header{
       		height: 100px;
       		position:absolute;
       		left:170px;
       		top:5%;
       		border: 1.5px solid #D0D0D0; 
       	}
       	input{
            outline-style: none ;
            border: 1.5px solid #D0D0D0; 
            border-radius: 3px;
       	}
       	select{
            border: 1.5px solid #D0D0D0; 
            border-radius: 3px;
       	}
       	textarea{
            outline-style: none ;
            border: 1.5px solid #D0D0D0; 
            border-radius: 3px;      		
       	}
       	.seconddiv{
           	border-radius:20px;
       	    width: 60%;
           	background: #fff;
       	    height: 230px;
       	    position: absolute;
       	    left:20%;
       	    top:610px;

       	}
       	#liketag{
       		height:7%;
       		width:500px;
       		position:absolute; 
       		left:170px;
       	    top:50%;
       	}
       	#hatetag{
       		height:7%;
       		width:500px;
       		position:absolute; 
       		left:170px;
       	    top:60%;
       	}
       	.penicon{
       		height: 25px;
       		margin-top: 4px;
       		margin-left: 10px;
       		float:left;
       	}
.tagbox{
width:auto;
height:auto;
color:#fff;
background: #7B7B7B;
line-height: 20px;
text-align: center;
border-radius: 8px;
font-size:10px;
margin-left: 10px;
display: inline-block;
margin-top: 5px;
padding: 1px 5px;
float:left;
}
.tagdiv{
  width:465px;
  height: 150px;
}

#list {
margin: 0;
padding: 0;
list-style: none;
float: left;
}
       </style>
<<<<<<< Updated upstream
   </head>
=======
<script type="text/javascript">
$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-body input').val(recipient)
})


window.onload = function(event){
var btn = document.querySelector('#add');
var text = document.querySelector('#StringTextBox');
var list = document.querySelector('#list');
var colors = ["tag"];
var nub = 0;
btn.onclick = function(event){
if(text.value.trim() == ""){
alert("打點字吧");
return false;
}
var li = document.createElement("li");
li.innerHTML = "#"+text.value;
// li.className = colors[nub%colors.length];
/* 判斷a標籤已經被新增，就讓a標籤顯示出來，否則就新增 */
(list.children[0]&&list.children[0].className=="tagbox")
li.className = "tagbox";

var a = null;
li.onmouseover = function(event){
if(a) {
a.style.display = "block";
} else {
a = document.createElement("a");
a.href = "javascript:;";
a.onclick = function (){
list.removeChild(this.parentNode);
};
this.appendChild(a);
}
};
li.onmouseout = function(){
a.style.display = "none";
};
list.insertBefore(li,list.children[0]);
text.value ="";
nub  ;
};
};
 


</script>
	      </head>



>>>>>>> Stashed changes
   <body>
	<a href="member.jsp"><img src="img/back.png" id="backicon"></a>
   	<span style="position:absolute; left:22%; top:30px;font-family: Microsoft JhengHei;color: #5B5B5B;"><b>個人檔案</b></span>
   	<div class="fristdiv">
   		<from>
   			<span style="position:absolute; left:50px; top:15%;font-family: Microsoft JhengHei;color: #5B5B5B;">更改頭像</span>
   			<a href="header.jsp"><img src="img/test.jpg" id="header"></a>
            <span style="position:absolute; left:50px; top:30%;font-family: Microsoft JhengHei;color: #5B5B5B;">暱稱</span>
            <input value="null" style="position:absolute;left:170px;top:30%; ">
            <span style="position:absolute; left:50px; top:40%;font-family: Microsoft JhengHei;color: #5B5B5B;">性別</span>
<<<<<<< Updated upstream
            <select style="position:absolute;left:170px;top:40%; ">
              <option>男性</option>
              <option>女性</option>
              <option value="3">不方便透露</option>
=======
            <select style="position:absolute;left:170px;top:40%;" name="gender" value="<%=gender%>" selected = "<%=gender%>">
              <option value="male">男性</option>
              <option value="female">女性</option>
              <option value="other">不方便透露</option>
>>>>>>> Stashed changes
            </select>
            <span style="position:absolute; left:50px; top:50%;font-family: Microsoft JhengHei;color: #5B5B5B;">喜歡的標籤</span>
                <div id="liketag">                
                 <div class="tagbox">#園藝</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#電影</div>   
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <img src="img/pen.png" class="penicon" data-toggle="modal" data-target="#exampleModal" type="button">               
                 </div>
            <span style="position:absolute; left:50px; top:60%;font-family: Microsoft JhengHei;color: #5B5B5B;">討厭的標籤</span>   
                <div id="hatetag">                
                 <div class="tagbox">#園藝</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#電影</div> 
                 <div class="tagbox">#手沖咖啡</div>   
<<<<<<< Updated upstream
                 <img src="img/pen.png" class="penicon" data-toggle="modal" data-target="#exampleModal" data-whatever="like">     
=======
                 <img src="img/pen.png" class="penicon" data-toggle="modal" data-target="#exampleModal" type="button">     
>>>>>>> Stashed changes
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
<<<<<<< Updated upstream
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
=======
        <h5 class="modal-title" id="exampleModalLabel">編輯</h5>
>>>>>>> Stashed changes
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<<<<<<< Updated upstream
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
=======
        <div class="tagdiv">
          <ul id="list"></ul>
        </div>
        <form>
          <div class="form-group">
            <textarea type="text" id="StringTextBox" style="width:300px; position:absolute; top:130px;"></textarea>
            <input type="button" value="添加" id="add" class="btn btn-success" style="position:absolute; top:145px; right: 100px;">
>>>>>>> Stashed changes
          </div>
        </form>
      </div>
      <div class="modal-footer">
<<<<<<< Updated upstream
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>        
=======
        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary">確認修改</button>
      </div>
    </div>
  </div>
</div>         
>>>>>>> Stashed changes
                 </div>
            <span style="position:absolute; left:50px; top:70%;font-family: Microsoft JhengHei;color: #5B5B5B;">個簽</span>       
            <input value="原本的個簽" style="position:absolute;left:170px;top:70%;width:300px; ">  
            <span style="position:absolute; left:50px; top:85%;font-family: Microsoft JhengHei;color: #5B5B5B;">自介</span> 
            <textarea value="原本的自介" style="position:absolute;left:170px;top:80%;width:300px; height:80px;"></textarea>        
   		</from>
   	</div>
   	<span style="position:absolute; left:22%; top:580px;font-family: Microsoft JhengHei;color: #5B5B5B;"><b>帳號密碼</b></span>
   	<div class="seconddiv">
   			<span style="position:absolute; left:50px; top:10%;font-family: Microsoft JhengHei;color: #5B5B5B;">E-mail</span>
   			<input value="原本的E-mail" style="position:absolute;left:170px;top:10%;width:400px; ">  
   			<span style="position:absolute; left:50px; top:30%;font-family: Microsoft JhengHei;color: #5B5B5B;">變更密碼</span>
   			<span style="position:absolute; left:70px; top:40%;font-family: Microsoft JhengHei;color: #5B5B5B;">請輸入舊密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:40%;">
   			<span style="position:absolute; left:70px; top:60%;font-family: Microsoft JhengHei;color: #5B5B5B;">請輸入新密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:60%;">
   			<span style="position:absolute; left:70px; top:80%;font-family: Microsoft JhengHei;color: #5B5B5B;">確認密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:80%;">
   	</div>
   	<button type="button" class="btn btn-light" style="position:absolute;top:860px;left:45%; margin-bottom: 20px;">確認修改</button>
   </body>
   </html>