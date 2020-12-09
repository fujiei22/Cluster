<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>通知</title>
    <link href="../css/header.css" rel=stylesheet type="text/css" >
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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


      .chatdiv{
        background-color: rgb(141, 174, 211);
        padding:15px;
        margin:15px;
        border-radius: 10%;
      }
      .noticediv{
      	width: 96%;
      	height: 85%;
      	position:absolute;
      	top:65px;
      	overflow:auto;
      }
.noticediv::-webkit-scrollbar-track
{
  border-radius: 10px;
}

.noticediv::-webkit-scrollbar
{
  width: 10px;
}

.noticediv::-webkit-scrollbar-thumb
{
  border-radius: 10px;
  background-color:rgba(108,108,108,0.2);
}
.notice{
	background: #C4E1E1;
	width:80%;
	height: 60px;
	margin-left: 10px;
	padding: 15px 15px;
	border-radius: 15px;
	margin-top: 15px;
}
.username-link:active{
	text-decoration: none ;
}
.username-link:visited{
	text-decoration: none ;
}
.username-link:hover{
	text-decoration: none ;
}
.noticetime{
	font-size:10px;
	color: #5B5B5B;
}


</style>
</head>

<body>
	<div class="container-fluid" style="height: 100%;">
    <div class="row justify-content-center" style="height: 100%;">
      <!--第一區-->
      <div class="col leftnav">
        <ul class="nav flex-column" style="height: 100%">
          <li class="nav-item" style="height: 17%"></li>
          <li class="nav-item" style="height: 15%">
            <%String name =(String) session.getAttribute("name");%>
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
		
	 <!--第二區-->
	<div class="col-8 mainarea">
		<span style="color: #5B5B5B; font-size: 23px;position:absolute; top: 10px;">通知</span>
		<div class="noticediv">
		<div class="notice">
          <span class="username"><a class="username-link" href="#該用戶資料">name</span></a> 向您遞交好友邀請
          <span class="noticetime">2020/12/1 11:20</span>
          <span style="position:absolute; right: 180px;">
          <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModal">加為好友</button>
          <button type="button" class="btn btn-secondary btn-sm">拒絕</button>    
          </span>
        </div>      

        
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">恭喜</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        您已與該用戶成為好友
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">確認</button>
      </div>
    </div>
  </div>
</div>
		
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

</body>
</html>