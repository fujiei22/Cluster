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
        else {
          sql="USE `cluster`";
          con.createStatement().execute(sql);
          sql = "SELECT * FROM `member` WHERE `Email`='"+session.getAttribute("email")+"'";
			    ResultSet memberrs =con.createStatement().executeQuery(sql);
			    String name="";
			    while(memberrs.next()){
	    		name=memberrs.getString("Name");
          }
          sql = "SELECT member.Email, member.Name, member.Gender, memberskin.Skin, memberskin.Eyes, memberskin.Eyebrow, memberskin.Mouth, memberskin.Fronthair, memberskin.Backhair, memberskin.Clothes, memberskin.Accessories, member.Signature, member.Introduction FROM `friends` JOIN `member` ON friends.Friends = member.Email JOIN `memberskin` ON friends.Friends = memberskin.Email WHERE friends.Email = '"+session.getAttribute("email")+"'";
			    ResultSet frrs =con.createStatement().executeQuery(sql);
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>好友列表</title>
    <!-- bootstrap required-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <link href="css/icon/css/all.css" rel="stylesheet">

    <style type="text/css">
      body,html {height:100%;}
      body{
        overflow-y: hidden;
        overflow-x: hidden;
      }
        .leftnav{
          background-color:#cb997e;
          height: 100%;
        } 
      a{
        color:black;
      }
      a:hover{text-decoration:none;}
        .mainarea{
          background-color: white;
          overflow:scroll;
          height: 800px;
        }
       i{
         color:white;
       } 
        .chatdiv{
          color:white;
          width:200px;
          background-color: #f2a65a;
          padding:15px;
          margin-top:15px;
          border-radius: 15px;
        }
        .mainboard{
          margin:30px;
        }
        #myTabContent{
          padding:30px;
          border-radius:20px;
          background-color: #f8edeb;
          height:85%;
        }
        .maindiv{
          background-color:white;
          padding:5px;
          margin-top:20px;
          border-radius: 20px;
          width:80%;
          
        }
        .userheader{
          position:relative;
          margin-top:20px;
          margin-left: 20px;
          margin-right: 120px;
        }
        .h2div{
          position: relative;
          font-weight: bolder;
          margin:10px;
          
        }
        .iframediv{
          position: relative;
          z-index: 2;
        }
        .open-button {
          background-color: #555;
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          opacity: 0.8;
          position: fixed;
          bottom: 23px;
          right: 28px;
          height:50px;
          width: 50px;
        }
  
        /* The popup form - hidden by default */
        .form-popup {
          display: none;
          border: 3px solid #f1f1f1;
          position: absolute;
          z-index: 3;
          top:-5px;
          right:-5px;
          width: 350px;
        }
  
        /* Add styles to the form container */
        .form-container {
          max-width: 350px;
          padding: 10px;
          background-color: white;
        }
  
        /* Full-width input fields */
        .form-container input[type=text], .form-container input[type=password] {
          width: 100%;
          padding: 15px;
          margin: 5px 0 22px 0;
          border: none;
          background: #f1f1f1;
        }
  
        /* When the inputs get focus, do something */
        .form-container input[type=text]:focus, .form-container input[type=password]:focus {
          background-color: #ddd;
          outline: none;
        }
  
        /* Set a style for the submit/login button */
        .form-container .btn {
          background-color: #4CAF50;
          color: white;
          padding: 10px;
          margin: 5px;
          border: none;
          cursor: pointer;
          width: 30%;
          margin-bottom:10px;
          opacity: 0.8;
        }
  
        /* Add a red background color to the cancel button */
        .form-container .cancel {
          background-color: red;
        }
  
        /* Add some hover effects to buttons */
        .form-container .btn:hover, .open-button:hover {
          opacity: 1;
        }
        
        .percent{
          width:20%;
          margin:10px;
        }
        #myTabContent{
          width:100%;
          overflow:scroll;
          
        }
         #myTabContent::-webkit-scrollbar-track
          {
            border-radius: 10px;
            margin-top:10px;
            margin-bottom: 10px;
          }
          #myTabContent::-webkit-scrollbar
          {
            width: 10px;
          }
          #myTabContent::-webkit-scrollbar-thumb
          {
            border-radius: 10px;
            background-color:rgba(108,108,108,0.2);
          }
         .mainarea::-webkit-scrollbar-track
          {
            border-radius: 10px;
          }
          .mainarea::-webkit-scrollbar
          {
            width: 10px;
          }
          .mainarea::-webkit-scrollbar-thumb
          {
            border-radius: 10px;
            background-color:rgba(108,108,108,0.2);
          }
/* The popup chat - hidden by default */
.chat-popup2 {
  display: none;
  position: fixed;
  top: 30px;
  margin:0px auto;
  right: 300px;
  border: 2px solid #f1f1f1;
  z-index: 9;
}
/* Add styles to the form container */
.form-container2 {
  width:520px;
  padding: 10px;
  background-color: white;
}
/* Full-width textarea */
.form-container2 iframe {
  width: 100%;  
  height:620px;
  padding: 5px;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 300px;
}
      .box1{
        height: 300px;
        width: 180px;
        margin-top:30px;
        margin-right:15px;
        margin-left:5px;
        border-radius:20px;
        background:#f8edeb;
        float: left;
        position:relative;
      }
.member_name{
  width:180px;
  height: 15px;
  position: absolute;
  text-align:center;
  margin-top:75px;
  color: #5B5B5B;
  font-family:微軟正黑體;
  font-size: 15px;
}
.signature{
  width:180px;
  height:10.2px;
  font-size:10.2px;
  color: #5B5B5B;
  position:absolute;
  text-align:center;
  margin-top:105px;
  background: red;
}
#heart{
  position:absolute;
  top:132px;
  left:10px;
}
#likebox{
  width:135px;
  height:21px;
  position:absolute;
  left:36px;
  top:126px;
}
.tagbox{
width:auto;
height:auto;
color:#fff;
background: #7B7B7B;
text-align: center;
border-radius: 8px;
font-size:6px;
margin-left: 6px;
display: inline-block;
margin-top: 5px;
padding: 1px 5px;
float:left;
}
#panel1{
  margin:0px;
  padding:5px;
  text-align:center;
  display:none;
  width:auto;
  background: rgba(255,255,255,1.00);
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  width:120px;
  position:absolute;
  left:33px;
  top:180px;
  z-index: 3;
}
#panel2{
  margin:0px;
  padding:5px;
  text-align:center;
  display:none;
  width:auto;
  background: rgba(255,255,255,1.00);
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  width:120px;
  position:absolute;
  left:33px;
  top:235px;
  z-index: 4;
}
#hatebox{
  width:135px;
  height:21px;
  position:absolute;
  left:36px;
  top:180px;
}
#hate{
  position:absolute;
  top:187px;
  left:13px;
}
#introductionbox{
  width:162px;
  height:90px;
  position:absolute;
  left:15px;
  top:240px;
  color: #5B5B5B;
  font-size: 10px;
}
.frienddiv{
  width:820px;
  height: 500px;
  overflow:auto;
  position:absolute;
  top:50px;
}
.frienddiv::-webkit-scrollbar-track
{
  border-radius: 10px;
}
.frienddiv::-webkit-scrollbar
{
  width: 10px;
}
.frienddiv::-webkit-scrollbar-thumb
{
  border-radius: 10px;
  background-color:rgba(108,108,108,0.2);
}
#skin2{
  z-index:2;
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#eyes2{
  z-index:3;
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#eyebrow2{
  z-index:4;
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#mouth2{
  z-index:5;
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#fronthair2{
  z-index:6;
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#backhair2{
  z-index:7;
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#clothes2{
  z-index:8;
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#accessories2{
  z-index:9;
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}

#skin{
  z-index:2;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  background:#fff;
}
#eyes{
  z-index:3;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
  border-radius: 50%;
}
#eyebrow{
  z-index:4;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
  border-radius: 50%;
}
#mouth{
  z-index:5;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
  border-radius: 50%;
}
#fronthair{
  z-index:6;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
  border-radius: 50%;
}
#backhair{
  z-index:7;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
  border-radius: 50%;
}
#clothes{
  z-index:8;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
  border-radius: 50%;
}
#accessories{
  z-index:9;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
}
</style>
<script type="text/javascript">

</script>
</head>


<script>
  var isShow = false;
  function setcookie(set,title) { 
    document.cookie = "room=" + set + ";" + ";path=/";
    document.cookie = "title=" + title + ";" + ";path=/";
    
    if(!isShow) {
    isShow = true;
    document.getElementById('myForm2').style.display='block';
    document.getElementById("myframe").src="http://localhost:3000/room/"+title;
    }
    else {
    isShow = false;
    document.getElementById('myForm2').style.display='none';
    }
  }
</script>

<!--第一區-->
<div class="container-fluid" style="height: 100%;">
<div class="row justify-content-center" style="height: 100%;">
<div class="col leftnav">
<ul class="nav flex-column" style="height: 100%">
<li class="nav-item" style="height: 17%"></li>
<li class="nav-item" style="height: 15%;">
  <a class="nav-link active" href="member.jsp" style="color:white;font-size:large">
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
    <span style="position:absolute; left: 120px;font-size:larger;"><%=name%></span></a>
</li>
<li class="nav-item" style="height: 10%">
  <a class="nav-link active" href="homepage.jsp"style="color:white;font-size:larger;margin-top:10px;"><i class="far fa-newspaper fa-lg"></i>　話題</a>
</li>
<li class="nav-item"style="height: 10%">
  <a class="nav-link" href="recommend.jsp"style="color:white;font-size:larger;margin-top:10px;"><i class="far fa-bell fa-lg"></i>　推薦</a>
</li>
<li class="nav-item"style="height: 10%">
  <a class="nav-link" href="friends.jsp"style="color:white;font-size:larger;margin-top:10px;"><i class="far fa-address-book fa-lg"></i>　好友</a>
</li>

<li class="nav-item"style="height: 10%">
  <a class="nav-link" href="logout.jsp"style="color:white;font-size:larger;margin-top:10px;"><i class="fas fa-power-off fa-lg"></i>　登出</a>
</li>
<li class="nav-item" style="height: 17%"></li>
</ul>
</div>

<!--第一區-->

 <!--第二區-->
 <div class="col-8 mainarea">
  <div class="mainboard" style="height:80%">

  <div class="h2div" ><h2 style="font-weight:bold;">好友</h2>

     <!--第二區form-->
  <div class="form-popup" id="myForm">
    <form action="add_topic.jsp" class="form-container">
      <h2>開新話題</h2>
        <div class="form-group">
          <label for="title">標題</label>
          <input type="text" class="form-control" id="title" name="subject" placeholder="請輸入標題">
        </div>
        <div class="form-group">
          <label for="textarea">內文</label>
          <textarea class="form-control" id="textarea" name="content" rows="4" placeholder="請輸入內文"></textarea>
        </div>
        <div class="form-group">
          <label for="category">分類</label>
          <select class="form-control" id="category" name="category">
            <option>音樂</option>
            <option>電影</option>
            <option>運動</option>
            <option>遊戲</option>
            <option>旅遊</option>
            <option>美食</option>
          </select>
        </div>
      <button type="submit" class="btn">提交</button><button type="button" class="btn cancel" onclick="closeForm()">取消</button>
    </form>
  </div>
   <!--第二區form-->
  
</div>
         <div class="frienddiv">
            <%
              while(frrs.next()){

                String set =frrs.getString(2);
                String room =frrs.getString(1);
                
              out.println("<div class='box1'>");
              out.println("<img src='img/header/skin/skin"+frrs.getString("Skin")+".png' id='skin2' class='headersstyle'>");
              out.println("<img src='img/header/eyes/eyes"+frrs.getString("Eyes")+".png' id='eyes2' class='headersstyle'>");
              out.println("<img src='img/header/eyebrow/eyebrow"+frrs.getString("Eyebrow")+".png' id='eyebrow2' class='headersstyle'>");
              out.println("<img src='img/header/mouth/mouth"+frrs.getString("Mouth")+".png' id='mouth2' class='headersstyle'>");
              out.println("<img src='img/header/fronthair/fronthair"+frrs.getString("Fronthair")+".png' id='fronthair2' class='headersstyle'>");
              out.println("<img src='img/header/backhair/backhair"+frrs.getString("Backhair")+".png' id='backhair2' class='headersstyle'>");
              out.println("<img src='img/header/clothes/clothes"+frrs.getString("Clothes")+".png' id='clothes2' class='headersstyle'>");
              out.println("<img src='img/header/accessories/accessories"+frrs.getString("Accessories")+".png' id='accessories2' class='headersstyle'>");
              out.println("<div class='member_name'>");
              out.println("<p>"+frrs.getString("Name")+"&nbsp;&nbsp;♀</p>");
              out.println("</div>");

              out.println("<div class='signature'>");
              out.println("<p>"+frrs.getString("Signature")+"</p>");
              out.println("</div>");

              out.println("<img src='img/heart.png' id='heart' style='height:18px;'>");

              out.println("<div id='likebox' class='flip1'>");
              out.println("<div class='tagbox'>#園藝</div>");
              out.println("<div class='tagbox'>#手沖咖啡</div>");
              out.println("<div class='tagbox'>#電影</div>");
              out.println("</div>");

              out.println("<div id='panel1'>");
              out.println("<div class='tagbox'>#寵物</div>");
              out.println("<div class='tagbox'>#登山</div>");
              out.println("<div class='tagbox'>#繪畫</div>");
              out.println("<div class='tagbox'>#戲劇</div>");
              out.println("<div class='tagbox'>#小說</div>");
              out.println("<div class='tagbox'>#球類運動</div>");
              out.println("</div>");

              out.println("<img src='img/hate.png' id='hate' style='height:18px;'>");
              out.println("<div id='hatebox' class='flip2'>");
              out.println("<div class='tagbox'>#園藝</div>");
              out.println("<div class='tagbox'>#手沖咖啡</div>");
              out.println("<div class='tagbox'>#電影</div>");
              out.println("</div>");

              out.println("<div id='panel2'>");
              out.println("<div class='tagbox'>#穿搭</div>");
              out.println("<div class='tagbox'>#古典樂</div>");
              out.println("<div class='tagbox'>#歌劇</div>");
              out.println("<div class='tagbox'>#手工藝</div>");
              out.println("</div>");

              out.println("<div id='introductionbox'>");
              out.println("<p>"+frrs.getString("Introduction")+"</p>");
              out.println("<button type='button' class='btn btn-warning' style='margin-left:20px;margin:bottom:10px;' onclick=\"setcookie('"+room+"','"+set+"')\">與好友聊天</button>");
              out.println("</div>");
              out.println("</div>");
              }


            %>
          </div>
              <%-- <img src="img/test.jpg" id="sq"style="z-index:2;position: relative;">
                <div class="member_name">
                  <p><%=name%>&nbsp;&nbsp;♀</p>
                </div>
                <div class="signature">
                  <p><%=signature%></p>
                </div>
                <img src="img/heart.png" id="heart" style="height:18px;">
                <div id="likebox" class="flip">
                 <div class="tagbox">#園藝</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#電影</div>
                 </div>

                 <div class="panel">
                 <div class="tagbox">#寵物</div>
                 <div class="tagbox">#登山</div>
                 <div class="tagbox">#繪畫</div>
                 <div class="tagbox">#戲劇</div>
                 <div class="tagbox">#小說</div>
                 <div class="tagbox">#球類運動</div>
                 </div>

                <img src="img/hate.png" id="hate" style="height:18px;">
                <div id="hatebox" class="flip2">
                 <div class="tagbox">#園藝</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#電影</div>
                 </div>

                 <div class="pane2">
                 <div class="tagbox">#穿搭</div>
                 <div class="tagbox">#古典樂</div>
                 <div class="tagbox">#歌劇</div>
                 <div class="tagbox">#手工藝</div>
                 </div>

                 <div id="introductionbox">
                  <p><%=introduction%></p>
                </div> --%>


               </div>
            </div>


      <!--第三區-->
      <div class="col mainarea">
        <div class="thirdarea"style="height:100%">
        <%
          sql="SELECT title FROM chat WHERE chat.Name='"+name+"' GROUP BY title";
          ResultSet rs4=con.createStatement().executeQuery(sql);
          while(rs4.next())
          {
            sql="SELECT post.Subject, post.Category, COUNT(title) AS 討論度, post.Content, post.pno FROM chat JOIN post ON chat.title = post.pno WHERE chat.title = '"+rs4.getString(1)+"' ORDER BY chatid DESC";ResultSet rs5=con.createStatement().executeQuery(sql);
            //out.println("<script>console.log('[sql]: "+rs4.getString(1)+"')</script>");
            //out.println("<script>console.log('[sql]: "+"SELECT post.Subject, post.Category, COUNT(title) AS 討論度, post.Content FROM chat JOIN post ON chat.title = post.pno GROUP BY "+rs4.getString(1)+" ORDER BY chatid DESC"+"')</script>");
            while(rs5.next())
            {
              String room =rs5.getString(5);
              String set =rs5.getString(1);

              out.println("<a href='#' onclick=\"setcookie('"+room+"','"+set+"')\">"); 
              out.println("<div class='row'>");
              out.println("<div class='chatdiv'>");
              out.println("<i class='fas fa-pizza-slice fa-2x' ></i>");
              out.println("<span style='color:white'>"+ rs5.getString(3) +"</span><i class='fas fa-user'></i><span style='color:white'>在線</span>");
              out.println("<br>");
              out.println("<span class=''>"+ rs5.getString(1) +"</span>");
              out.println("</span>");
              out.println("</div>");
              out.println("</div>");
              out.println("</a>");
            }
          }
          %>

<!--第三區iframe-->    
<div class="chat-popup2" id="myForm2">
  <div class="form-container2">
    
     <iframe id="myframe" src="http://localhost:3000/room/%E6%9C%89%E4%BA%BA%E8%B7%9F%E6%88%91%E4%B8%80%E6%A8%A3%E6%80%95%E7%95%AB%E7%95%AB%E5%97%8E%EF%BC%9F" >
            你的瀏覽器不支援 iframe
     </iframe>
  </div>
</div>
<!--第三區iframe-->

        <div class="row">
          <button class="open-button" onclick="openForm()">+</button>
        </div>
      </div>
    </div>
    <!--第三區-->

      </div>
  </div>
<%
//Step 6: 關閉連線
          con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec);

    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤");
}
%>

</body>
</html>
