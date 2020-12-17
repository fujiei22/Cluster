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
			    String name="", createtime="", signature="", introduction="";
			    while(memberrs.next()){
	    		name = memberrs.getString("Name");
          createtime = memberrs.getString("Createtime");
          signature = memberrs.getString("Signature");
          introduction = memberrs.getString("Introduction");
			}
           %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>會員頁</title>
    <!-- bootstrap required-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="css/header.css">
    <link href="css/icon/css/all.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://static.pureexample.com/js/flot/excanvas.min.js"></script>
    <script src="http://static.pureexample.com/js/flot/jquery.flot.min.js"></script>
    <script type="text/javascript"src="http://lmcdwriting.org/userfiles/flot-0.8.3/flot/flot-axislabels-master/jquery.flot.axislabels.js"></script>
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
      #box1{
        position: absolute;
        top: 25px;
          color: #5B5B5B;
      }
      #box2{
        background-color:#f8edeb;
        height: 500px;
        width: 300px;
        position: absolute;
        top:100px;
        left: 80px;
        border-radius:20px;
       
      }
.member_name{
  width:300px;
  height:25px;
  position: absolute;
  text-align:center;
  margin-top:120px;
  color: #5B5B5B;
  font-family:微軟正黑體;
  font-size: 25px;
}
.signature{
  width:300px;
  height:17px;
  font-size:17px;
  color: #5B5B5B;
  position:absolute;
  text-align:center;
  margin-top:165px;  
}
#heart{
  position:absolute;
  top:210px;
  left:10px;
}
#likebox{
  width:210px;
  height:35px;
  position:absolute;
  left:60px;
  top:210px;
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
padding: 3px 5px;
float:left;
}
.panel{
  margin:0px;
  padding:5px;
  text-align:center;
  display:none;
  width:auto;
  background: rgba(255,255,255,1.00);
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  width:220px;
  position:absolute;
  left:55px;
  top:245px;
  z-index: 3;
}
.pane2{
  margin:0px;
  padding:5px;
  text-align:center;
  display:none;
  width:auto;
  background: rgba(255,255,255,1.00);
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  width:220px;
  position:absolute;
  left:55px;
  top:305px;
  z-index: 4;
}
#hatebox{
  width:210px;
  height:35px;
  position:absolute;
  left:60px;
  top:270px;
}
#hate{
  position:absolute;
  top:270px;
  left:15px; 
}
#introductionbox{
  width:270px;
  height: 150px;
  position:absolute;
  left:15px;
  top:340px;
    color: #5B5B5B;
}
#start{
  width:300px;
  position:absolute;
  left:55%;
  top:120px;
    color: #5B5B5B;
  
}
#startdate{
  position:relative;
  left:30px;
}
#flot-placeholder{
  position:absolute;
  left:50%;
  top:170px;
  width:350px;
  height:180px;
}       
#month{
  position:absolute;
  left:93%;
  top:331px;
  font-size:13px;
} 
.verticalLine {
  width: 80px;
  height: 75px;
  border-right: solid #7B7B7B;
  position: absolute;
  top:370px;
  left:62.5%;
  color: #5B5B5B;
  font-family:微軟正黑體;
  font-size: 17px;
}
.verticalLine2{
  width: 80px;
  height: 70px;
  position: absolute;
  top: 370px;
  left: 73%;
  color: #5B5B5B;
  font-family:微軟正黑體;
  font-size: 17px;
}
#badge{
  width:350px;
  height:130px;
  position:absolute;
  left:52%;
  top:470px;
}
.badgeimg{
  margin-right:10px;
  margin-left:10px;
  margin-top:10px;
  float: left;
  height:30px;
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

#skin2{
  z-index:2;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
  background:#fff;
}
#eyes2{
  z-index:3;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#eyebrow2{
  z-index:4;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#mouth2{
  z-index:5;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#fronthair2{
  z-index:6;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#backhair2{
  z-index:7;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#clothes2{
  z-index:8;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#accessories2{
  z-index:9;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}

#flotcontainer {
    width: 350px;
    height: 400px;
    text-align: left;
    position:absolute;
    left:55%;
    top:170px;
}
</style>
<script type="text/javascript">
$(function(){
$(".flip").hover(function(){
    $(".panel").slideToggle("normal");
    $(".xs1").toggle();
    $(".xs2").toggle();
  });
});
$(function(){
$(".flip2").hover(function(){
    $(".pane2").slideToggle("normal");
    $(".xs1").toggle();
    $(".xs2").toggle();
  });
});

//長條圖
//data1=[[興趣數值(順序:閱讀、繪畫、電動、電影、運動、舞蹈、旅遊、購物),y軸(不要動)]]
$(function () {    
    var data1 = [
        [90, 70], [95, 60], [30, 50], [20, 40], [10, 30], [30, 20], [20, 10], [10, 0]
    ];

 
    var options = {
            series:{
                bars:{show: true}
            },
            bars:{
                horizontal:true,
                barWidth:6
            },
            grid:{
                backgroundColor: { colors: ["#fff", "#fff"] }
            },
            yaxis:{
              ticks: [] 
            },
            xaxis:{
              max:100 
            }
    };

 
    $.plot($("#flotcontainer"), [data1], options); 

     
});
</script>
</head>

<body>


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
        <div class="h2div" style="margin:40px;">
          <h2 style="font-weight:bold;">關於你</h2>
        </div>
            <div id="box2" style="margin-top:30px;">
               <a href="setting.jsp"><%
                String new_mail2=(String)(session.getAttribute("email"));
                //con.createStatement().execute("USE `cluster`");
                String sql2 = "SELECT * FROM `memberskin` WHERE `Email`='"+new_mail+"'";
                ResultSet rs2 =  con.createStatement().executeQuery(sql2);
                con.createStatement().execute(sql2);
                while(rs2.next())
                {
                    out.println("<img src='img/header/skin/skin"+rs2.getString(2)+".png' id='skin2'>");
                    out.println("<img src='img/header/eyes/eyes"+rs2.getString(3)+".png' id='eyes2'>");
                    out.println("<img src='img/header/eyebrow/eyebrow"+rs2.getString(4)+".png' id='eyebrow2'>");
                    out.println("<img src='img/header/mouth/mouth"+rs2.getString(5)+".png' id='mouth2'>");
                    out.println("<img src='img/header/fronthair/fronthair"+rs2.getString(6)+".png' id='fronthair2'>");
                    out.println("<img src='img/header/backhair/backhair"+rs2.getString(7)+".png' id='backhair2'>");
                    out.println("<img src='img/header/clothes/clothes"+rs2.getString(8)+".png' id='clothes2'>");
                    out.println("<img src='img/header/accessories/accessories"+rs2.getString(9)+".png' id='accessories2'>");
                }
                //con.close();
%>              </a>
                <div class="member_name">
                  <p><%=name%>&nbsp;&nbsp;♀</p>
                </div>
                <div class="signature">
                  <p><%=signature%></p>
                </div>
                <img src="img/heart.png" id="heart" style="height:30px;">               
                <div id="likebox" class="flip">                
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#手繪</div>
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#水彩畫</div>
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#文青</div>                 
                 </div>
                 
                 <div class="panel">
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#音樂劇</div>
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#寫生</div>
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#塗鴉</div>
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#推理小說</div>
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#插畫</div>
                 <div class="tagbox" style="background-color: rgb(204, 50, 30);font-size:17px;">#手工藝</div>
                 </div>
               
                <img src="img/hate.png" id="hate" style="height:30px;">               
                <div id="hatebox" class="flip2">                
                 <div class="tagbox" style="background-color:rgb(25, 60, 124);font-size:17px;">#曬太陽</div>
                 <div class="tagbox" style="background-color:rgb(25, 60, 124);font-size:17px;">#跳舞</div>
                 <div class="tagbox" style="background-color:rgb(25, 60, 124);font-size:17px;">#電玩</div>                 
                 </div>
                 
                 <div class="pane2">
                 <div class="tagbox" style="background-color:rgb(25, 60, 124);font-size:17px;">#恐怖電影</div>
                 <div class="tagbox" style="background-color:rgb(25, 60, 124);font-size:17px;">#球類運動</div>
                 <div class="tagbox" style="background-color:rgb(25, 60, 124);font-size:17px;">#游泳</div>
                 <div class="tagbox" style="background-color:rgb(25, 60, 124);font-size:17px;">#陌生環境</div>
                 </div>

                 <div id="introductionbox">
                  <p><%=introduction%></p>
                </div>
                </div>
              <div id="start">
                <b>註冊日期</b>
                <span id="startdate">
                <%=createtime%>
                </span> 
              </div>    
              <span style="position:absolute;left:50%;top:182px;">閱讀</span>     
              <span style="position:absolute;left:50%;top:230px;">繪畫</span>
              <span style="position:absolute;left:50%;top:278px;">電動</span>
              <span style="position:absolute;left:50%;top:326px;">電影</span>
              <span style="position:absolute;left:50%;top:374px;">運動</span>
              <span style="position:absolute;left:50%;top:422px;">舞蹈</span>
              <span style="position:absolute;left:50%;top:470px;">旅遊</span>
              <span style="position:absolute;left:50%;top:518px;">購物</span>
                   <div id="flotcontainer"></div>

                </div>
       
                 <!--form-->
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
        out.println("<i class='fas fa-user fa-2x'></i><span style='color:white'>　討論度：</span><span style='color:white'>"+ rs5.getString(3) +"</span>");
        out.println("<br>");
        out.println("<span class=''>"+ rs5.getString(1) +"</span>");
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
           out.println("SQL錯誤");
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤");
}
%>
</body>
</html>