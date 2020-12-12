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
          sql = "SELECT member.Email, member.Name, member.Gender, member.Signature, member.Introduction FROM `friends` JOIN `member` ON friends.Friends = member.Email WHERE friends.Email = '"+session.getAttribute("email")+"'"; 
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
          background-color: rgb(141, 141, 141);
          height: 100%;
        } 
      a{
        color:black;
      }
      a:hover{text-decoration:none;}
        .mainarea{
          background-color: white;
          overflow:scroll;
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
      .box1{
        height: 300px;
        width: 180px;
        margin-top:10px;
        margin-right:15px;
        margin-left:5px;
        border-radius:20px;
        background:rgb(188, 228, 238);
        float: left;
      }
.member_name{
  width:180px;
  height: 15px;
  position: absolute;
  text-align:center;
  margin-top:70px;
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
  margin-top:40px;  
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
.panel{
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
.pane2{
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
      #sq{
        width: 60px;
        height: 60px;
        border-radius: 50%;
        border: 1px solid rgba(255,255,255,1.00);
        top:12px;
        left: 60px;
        position:absolute;
      }
#skin{
  z-index:2;
  position: absolute;  
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#eyes{
  z-index:3;
  position: absolute;  
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#eyebrow{
  z-index:4;
  position: absolute;  
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#mouth{
  z-index:5;
  position: absolute;  
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#fronthair{
  z-index:6;
  position: absolute;  
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#backhair{
  z-index:7;
  position: absolute;  
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#clothes{
  z-index:8;
  position: absolute;  
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}
#accessories{
  z-index:9;
  position: absolute;  
  width: 60px;
  height: 60px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  top:12px;
  left: 65px;
}


.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

.add:hover, a:hover {
  opacity: 0.7;
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
            <a class="nav-link active" href="member.jsp" style="color:white;font-size:large"><%/*@ include file="importheader1.jsp" */%><i class="fas fa-user-circle fa-2x"></i><%=name%></a>
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
         <span style="color: #5B5B5B; font-size: 23px;position:absolute; top: 10px;">好友列表</span>
         
          <!--四個一組，超過四個就再多一個card-group-->  
         <div class="card-group">  
              <div class="card text-center">
                <div class="card-body">
                  <img src="img/test.jpg" alt="John" style="width:30%">
                  <h5 class="card-title">用戶名</h5>
                  <p class="card-text">個簽</p>
                  <span class="badge rounded-pill bg-warning">喜歡的</span>
                  <span class="badge rounded-pill bg-warning">標籤們</span>
                  <br>
                  <span class="badge rounded-pill bg-secondary">不喜歡的</span>
                  <span class="badge rounded-pill bg-secondary">標籤們</span>
                  <button class="btn btn-primary">加好友</button>
                  <button class="btn btn-danger">不感興趣</button>
                </div>
                <div class="card-footer text-muted">
                  <span>推薦度：</span>
                  <!--如果同個群就三個點，第二相關的群就兩個點-->
                  <span>●●●</span>
                </div>
              </div>
              <div class="card text-center">
                <div class="card-body">
                  <img src="img/test.jpg" alt="John" style="width:30%">
                  <h5 class="card-title">用戶名</h5>
                  <p class="card-text">個簽</p>
                  <button class="btn btn-primary">加好友</button>
                  <button class="btn btn-primary">不感興趣</button>
                </div>
                <div class="card-footer text-muted">
                  2 days ago
                </div>
              </div>
              <div class="card text-center">
                <div class="card-body">
                  <img src="img/test.jpg" alt="John" style="width:30%">
                  <h5 class="card-title">用戶名</h5>
                  <p class="card-text">個簽</p>
                  <button class="btn btn-primary">加好友</button>
                  <button class="btn btn-primary">不感興趣</button>
                </div>
                <div class="card-footer text-muted">
                  2 days ago
                </div>
              </div>
              <div class="card text-center">
                <div class="card-body">
                  <img src="img/test.jpg" alt="John" style="width:30%">
                  <h5 class="card-title">用戶名</h5>
                  <p class="card-text">個簽</p>
                  <button class="btn btn-primary">加好友</button>
                  <button class="btn btn-primary">不感興趣</button>
                </div>
                <div class="card-footer text-muted">
                  2 days ago
                </div>
              </div>
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