<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
          out.println("連線建立失敗");
        else
        {
            con.createStatement().execute("USE `cluster`");
            sql = "SELECT * FROM `member` WHERE `Email`='"+session.getAttribute("email")+"'"; 
			ResultSet rs =con.createStatement().executeQuery(sql);
			String name="", gender="", signature="", introduction="",  email="", pwd="";
			while(rs.next()){
	    		name=rs.getString("Name");
				gender=rs.getString("Gender");
				signature=rs.getString("Signature");
				introduction=rs.getString("Introduction");
				email=rs.getString("Email");
				pwd=rs.getString("Password");
			}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.5.0.js"></script>

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
       	    top:630px;
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
#skin{
  z-index:2;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0; 
}
#eyes{
  z-index:3;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#eyebrow{
  z-index:4;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#mouth{
  z-index:5;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#fronthair{
  z-index:6;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#backhair{
  z-index:7;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#clothes{
  z-index:8;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#accessories{
  z-index:9;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
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

#list2 {
margin: 0;
padding: 0;
list-style: none;
float: left;
}
</style>
<script type="text/javascript">
$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-body input').val(recipient)
})


function addcontent(){
var btn = document.querySelector('#add');
var text = document.querySelector('#StringTextBox');
var list = document.querySelector('#list');
var colors = ["tag"];
var nub = 0;
btn.onclick = function(){
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
li.onmouseover = function(){
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

function addcontent2(){
var btn = document.querySelector('#add2');
var text = document.querySelector('#StringTextBox2');
var list = document.querySelector('#list2');
var colors = ["tag"];
var nub = 0;
btn.onclick = function(){
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
li.onmouseover = function(){
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

$( "#gender" ).val( "female" );

</script>



   <body>
	<a href="member.jsp"><img src="img/back.png" id="backicon"></a>
   	<span style="position:absolute; left:22%; top:30px;font-family: Microsoft JhengHei;color: #5B5B5B;"><b>個人檔案</b></span>
   	<div class="fristdiv">
   		<form action="updatesetting.jsp" method="post">
   			<span style="position:absolute; left:50px; top:15%;font-family: Microsoft JhengHei;color: #5B5B5B;">更改頭像</span>
   			<a href="header.jsp">
          <%
          String new_mail=(String)(session.getAttribute("email"));
          //con.createStatement().execute("USE `cluster`");
          String sql1 = "SELECT * FROM `memberskin` WHERE `Email`='"+new_mail+"'";
          ResultSet rs1 =  con.createStatement().executeQuery(sql1);
          con.createStatement().execute(sql1);
          while(rs1.next())
          {
              out.println("<img src='img/header/skin/skin"+rs1.getString(2)+".png' id='skin'>");
              out.println("<img src='img/header/eyes/eyes"+rs1.getString(3)+".png' id='eyes'>");
              out.println("<img src='img/header/eyebrow/eyebrow"+rs1.getString(4)+".png' id='eyebrow'>");
              out.println("<img src='img/header/mouth/mouth"+rs1.getString(5)+".png' id='mouth'>");
              out.println("<img src='img/header/fronthair/fronthair"+rs1.getString(6)+".png' id='fronthair'>");
              out.println("<img src='img/header/backhair/backhair"+rs1.getString(7)+".png' id='backhair'>");
              out.println("<img src='img/header/clothes/clothes"+rs1.getString(8)+".png' id='clothes'>");
              out.println("<img src='img/header/accessories/accessories"+rs1.getString(9)+".png' id='accessories'>");
          }
          //con.close();
          %>
        </a>
            <span style="position:absolute; left:50px; top:30%;font-family: Microsoft JhengHei;color: #5B5B5B;">暱稱</span>
            <input type="text" value="<%=name%>" name="name" style="position:absolute;left:170px;top:30%; ">
            <span style="position:absolute; left:50px; top:40%;font-family: Microsoft JhengHei;color: #5B5B5B;">性別</span>
            <select style="position:absolute; left:170px; top:40%;" name="gender" id="gender">
              <option value="male">男性</option>
              <option value="female">女性</option>
              <option value="other">其他</option>
            </select>
            <script type="text/javascript">
            $( "#gender" ).val( "<%=gender%>" );
            </script>

            <span style="position:absolute; left:50px; top:50%;font-family: Microsoft JhengHei;color: #5B5B5B;">喜歡的標籤</span>
                <div id="liketag">                
                 <div class="tagbox">#園藝</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#電影</div>   
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <img src="img/pen.png" class="penicon" data-toggle="modal" data-target="#exampleModal" type="button" onclick="myMsg(1)">        
                 </div>
            <span style="position:absolute; left:50px; top:60%;font-family: Microsoft JhengHei;color: #5B5B5B;">討厭的標籤</span>   
                <div id="hatetag">                
                 <div class="tagbox">#園藝</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#電影</div> 
                 <div class="tagbox">#手沖咖啡</div>   
                 <img src="img/pen.png" class="penicon" data-toggle="modal" data-target="#exampleModal2" type="button">     
                 </div>
            <span style="position:absolute; left:50px; top:70%;font-family: Microsoft JhengHei;color: #5B5B5B;">個簽</span>       
            <input value="<%=signature%>" name="signature" style="position:absolute;left:170px;top:70%;width:300px; ">  
            <span style="position:absolute; left:50px; top:85%;font-family: Microsoft JhengHei;color: #5B5B5B;">自介</span> 
            <textarea name="introduction" style="position:absolute;left:170px;top:80%;width:300px; height:80px;"><%=introduction%></textarea>        
   	       </div>
           <button type="submit" class="btn btn-light" style=" position:absolute;left:45%; top:550px;">確認修改</button>
           </form>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">編輯</h5>
      </div>
      <div class="modal-body">
        <div class="tagdiv">
          <ul id="list"></ul>
        </div>
        <form>
          <div class="form-group">
            <textarea type="text" id="StringTextBox" style="width:300px; position:absolute; top:130px;"></textarea>
            <input type="button" value="添加" id="add" class="btn btn-success" onclick="addcontent()" style="position:absolute; top:145px; right: 100px;">
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancel">取消</button>
        <button type="submit" class="btn btn-primary">確認</button>
      </div>
    </form>
    </div>
  </div>
</div>     

<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">編輯</h5>
      </div>
      <div class="modal-body">
        <div class="tagdiv">
          <ul id="list2"></ul>
        </div>
        <form>
          <div class="form-group">
            <textarea type="text" id="StringTextBox2" style="width:300px; position:absolute; top:130px;"></textarea>
            <input type="button" value="添加" id="add2" class="btn btn-success" onclick="addcontent2()" style="position:absolute; top:145px; right: 100px;">
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancel">取消</button>
        <button type="submit" class="btn btn-primary">確認</button>
      </div>
      </form>
    </div>
  </div>
</div>  
   	<span style="position:absolute; left:22%; top:600px;font-family: Microsoft JhengHei;color: #5B5B5B;"><b>帳號密碼</b></span>
   	<div class="seconddiv">
        <form>
   			<span style="position:absolute; left:50px; top:10%;font-family: Microsoft JhengHei;color: #5B5B5B;">E-mail</span>
   			<input value="<%=email%>" style="position:absolute;left:170px;top:10%;width:400px;"  disabled="disabled">  
   			<span style="position:absolute; left:50px; top:30%;font-family: Microsoft JhengHei;color: #5B5B5B;">變更密碼</span>

   			<span style="position:absolute; left:70px; top:40%;font-family: Microsoft JhengHei;color: #5B5B5B;">請輸入舊密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:40%;" name="oldpwd">
			   
   			<span style="position:absolute; left:70px; top:60%;font-family: Microsoft JhengHei;color: #5B5B5B;">請輸入新密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:60%;" name="newpwd">

   			<span style="position:absolute; left:70px; top:80%;font-family: Microsoft JhengHei;color: #5B5B5B;">確認密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:80%;" name="renewpwd">
   	</div>
   	<button type="submit" class="btn btn-light" style="position:absolute;top:870px;left:45%; margin-bottom: 20px;">確認修改</button>
	      </form>

<%
   con.close();
		}
		}
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
   %>
   </body>
   </html>