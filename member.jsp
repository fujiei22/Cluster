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
			    String email="", name="", createtime="", read="", draw="", game="", movie="", sport="", dance="", travel="", shopping="", signature="", introduction="";
			    while(memberrs.next())
          {
            email = memberrs.getString("Email");
	    		  name = memberrs.getString("Name");
            createtime = memberrs.getString("Createtime");
            read = memberrs.getString("read");
            draw = memberrs.getString("draw");
            game = memberrs.getString("game");
            movie = memberrs.getString("movie");
            sport = memberrs.getString("sport");
            dance = memberrs.getString("dance");
            travel = memberrs.getString("travel");
            shopping = memberrs.getString("shopping");
            signature = memberrs.getString("Signature");
            introduction = memberrs.getString("Introduction");
          }

          sql = "SELECT member.Name, member.Email, (SELECT COUNT(*) FROM post WHERE post.Email = '"+email+"') AS 發文數, (SELECT COUNT(*) FROM chat WHERE chat.Name = '"+name+"') AS 回文數 FROM `member` WHERE member.Email = '"+email+"'";
          ResultSet prrs =con.createStatement().executeQuery(sql);
          String po="", re="";
          while(prrs.next())
          {
            po = prrs.getString(3);
            re = prrs.getString(4);
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


    <style type="text/css">
body,html {height:100%;}
      body{
        overflow-y: hidden;
        overflow-x: hidden;
      }
        .leftnav{
          background-color: rgb(141, 141, 141);
          height: 100%;
        } 
      a{
        color:black;
      }
      a:hover{text-decoration:none;}
        .mainarea{
          background-color: white;
          overflow-x: hidden;
        }
       i{
         color:white;
       } 
        .chatdiv{
          color:white;
          width:200px;
          background-color: rgb(141, 174, 211);
          padding:15px;
          margin-top:15px;
          border-radius: 10%;
        }
        .mainboard{
          margin:30px;
          
        }
        #myTabContent{
          padding:30px;
          border-radius:15px;
          background-color: rgb(188, 228, 238);
          height:85%;
        }
        .maindiv{
          background-color:white;
          padding:5px;
          margin-top:10px;
          border-radius: 10px;
          width:60%;
          
        }
        .h2div{
          position: relative;
          z-index: 1;
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
      #box1{
        position: absolute;
        top: 25px;
          color: #5B5B5B;
      }
      #box2{
        height: 500px;
        width: 300px;
        position: absolute;
        top:100px;
        left: 80px;
        border-radius:20px;
        background:rgb(188, 228, 238);
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
  margin-top:70px;  
}
#heart{
  position:absolute;
  top:210px;
  left:10px;
}
#likebox{
  width:180px;
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
padding: 1px 5px;
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
  width:200px;
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
  width:200px;
  position:absolute;
  left:55px;
  top:305px;
  z-index: 4;
}
#hatebox{
  width:180px;
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
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#eyes{
  z-index:3;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#eyebrow{
  z-index:4;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#mouth{
  z-index:5;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#fronthair{
  z-index:6;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#backhair{
  z-index:7;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#clothes{
  z-index:8;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
#accessories{
  z-index:9;
  position: absolute;  
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:20px;
  left: 100px;
}
</style>
<script type="text/javascript" src="http://www.pureexample.com/js/lib/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="http://www.pureexample.com/js/flot/jquery.flot.min.js"></script>
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
//折線圖
var data = [[1, 30], [2, 40], [3, 15], [4, 25], [5, 30], [6, 40], [7, 60], [8, 35]];
 
 var dataset = [{label: "活躍度",data: data}];
 var options = {
  series: {
    lines: { show: true },
    points: {
    radius: 3,
    show: true
          }
            }
        };
 
$(document).ready(function () {
  $.plot($("#flot-placeholder"), dataset, options);
        });
</script>
</head>

<body>


  <div class="container-fluid" style="height: 100%;">
    <div class="row justify-content-center" style="height: 100%;">
      <!--第一區-->
      <div class="col leftnav">
        <ul class="nav flex-column" style="height: 100%">
          <li class="nav-item" style="height: 17%"></li>
          <li class="nav-item" style="height: 15%">
            <a class="nav-link active" href="member.jsp" style="color:white;font-size:large"><%//@ include file="importheader1.jsp" %><i class="fas fa-user-circle fa-2x"></i>　<%=name%></a>
          </li>
          <li class="nav-item" style="height: 10%">
            <a class="nav-link active" href="homepage.jsp"style="color:white;font-size:large"><i class="far fa-newspaper"></i>　話題</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="notification.jsp"style="color:white;font-size:large"><i class="far fa-bell"></i>　通知</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="friends.jsp"style="color:white;font-size:large"><i class="far fa-address-book"></i>　好友</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#"style="color:white;font-size:large"><i class="far fa-comments"></i>　聊天</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="logout.jsp"style="color:white;font-size:large"><i class="fas fa-power-off"></i>　登出</a>
          </li>
          <li class="nav-item" style="height: 17%"></li>
        </ul>
      </div>
      <!--第二區-->
      <div class="col-8 mainarea">
        <div id="box1">
          <p>Hi! <%=name%></p>
          <p>關於你</p>
        </div>
            <div id="box2">
               <a href="setting.jsp"><img src="img/setting.png" style="height:25px;position:absolute;left:5px;top:5px;"></a>
                  <img src="img/header/skin/skin1.png" id="skin" class="headersstyle">
                  <img src="img/header/eyes/eyes1.png" id="eyes" class="headersstyle">
                  <img src="img/header/eyebrow/eyebrow4.png" id="eyebrow" class="headersstyle">
                  <img src="img/header/mouth/mouth1.png" id="mouth" class="headersstyle">
                  <img src="img/header/fronthair/fronthair29.png" id="fronthair" class="headersstyle">
                  <img src="img/header/backhair/backhair8.png" id="backhair" class="headersstyle">
                  <img src="img/header/clothes/clothes18.png" id="clothes" class="headersstyle">
                  <img src="img/header/accessories/accessories7.png" id="accessories" class="headersstyle">
                <%//@ include file="importheader.jsp" %>
                <div class="member_name">
                  <p><%=name%>&nbsp;&nbsp;♀</p>
                </div>
                <div class="signature">
                  <p><%=signature%>></p>
                </div>
                <img src="img/heart.png" id="heart" style="height:30px;">               
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
               
                <img src="img/hate.png" id="hate" style="height:30px;">               
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
                </div>
                </div>
              <div id="start">
                <b>註冊日期</b>
                <span id="startdate">
                <%=createtime%>
                </span> 
              </div>
              <div id="flot-placeholder"></div>
              <span id="month">(月)</span>
                    <div class="verticalLine">
                      <b><p>發起話題</p></b>
                      <span style="font-family:Times;font-size:25px;margin-left:20px"><%=po%></span>
                    </div>
                <div class="verticalLine2">
                  <b><p>參與話題</p></b>
                  <span style="font-family:Times;font-size:25px; margin-left:20px"><%=re%></span>
                </div>

              <div id="badge">
                <b><span style="color: #5B5B5B;">你的徽章</span></b><br>
                <img src="img/badge.png" class="badgeimg">   
                <img src="img/badge.png" class="badgeimg"> 
                <img src="img/badge.png" class="badgeimg"> 
                <img src="img/badge.png" class="badgeimg">
                <img src="img/badge.png" class="badgeimg">
                <img src="img/badge.png" class="badgeimg">
                <img src="img/badge.png" class="badgeimg">
                <img src="img/badge.png" class="badgeimg">
                <img src="img/badge.png" class="badgeimg">
              </div>
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
        
      <div class="row">
        <div class="chatdiv">
          <i class="fas fa-pizza-slice fa-2x" ></i>
          <span style="color:white">　5 </span><i class='fas fa-user'></i><span style="color:white">在線</span>
          <br>
          <span class="">早餐吃什麼</span>
          <p class="">蛋餅還是三明治？</span>
        </div>
      </div>
      <div class="row">
        <div class="chatdiv">
          <i class="fas fa-baseball-ball fa-2x"></i>
          <span style="color:white">　4 </span><i class='fas fa-user'></i><span style="color:white">在線</span>
          <br>
          <span class="">星期六有沒有人要打球</span>
          <p class="">球我帶</span>
        </div>
      </div>
      <div class="row">
        <div class="chatdiv">
          <i class="fas fa-gamepad fa-2x"></i>
          <span style="color:white">　2 </span><i class='fas fa-user'></i><span style="color:white">在線</span>
          <br>
          <span class="">有人玩過FF嗎?</span>
          <p class="">最近在特價，值得買嗎？</span>
        </div>
      </div>
      
      
      <div class="row">
        <button class="open-button" onclick="openForm()">+</button>
      </div>
    </div>
  </div>

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