<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
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


    <style type="text/css">

    html {
      height:100%;
    }
    body{
      margin-top: 0px;
      margin-right: 0px;
      margin-bottom: 0px;
      margin-left: 0px;
      height:100%;
    }
      .leftnav{
        background-color: rgb(141, 141, 141);
        height: 100%;
      } 
    a{
      color:black;
    }
      .mainarea{
        background-color: white;
      }
      .chatdiv{
        background-color: rgb(141, 174, 211);
        padding:15px;
        margin:15px;
        border-radius: 10%;
      }
      #box1{
        position: absolute;
        top: 25px;
          color: #5B5B5B;
      }
      #sq{
        width: 100px;
        height: 100px;
        border-radius: 50%;
        border: 1px solid rgba(255,255,255,1.00);
        top:20px;
        left: 100px;
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
  height: 25px;
  position: absolute;
  text-align:center;
  margin-top:30px;
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
#mouth{
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
            <a class="nav-link active" href="member.html">User name</a>
          </li>
          <li class="nav-item" style="height: 10%">
            <a class="nav-link active" href="homepage.html">話題</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">通知</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">好友</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">聊天</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">登出</a>
          </li>
          <li class="nav-item" style="height: 17%"></li>
        </ul>
      </div>

      <!--第二區-->
      <div class="col-8 mainarea">
        <div id="box1">
          <p>Hi! name</p>
          <p>關於你</p>
        </div>
            <div id="box2">
              <img src="img/test.jpg" id="sq"style="z-index:2;position: relative;">  
                
                <div class="member_name">
                  <p>name&nbsp;&nbsp;♀</p>
                </div>
                <div class="signature">
                  <p>個簽</p>
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
                  <p>自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介自介</p>
                </div>
                </div>
              <div id="start">
                <b>註冊日期</b>
                <span id="startdate">
                2020/07/07
                </span> 
              </div>
              <div id="flot-placeholder"></div>
              <span id="mouth">(月)</span>
                    <div class="verticalLine">
                      <b><p>發起話題</p></b>
                      <span style="font-family:Times;font-size:25px;margin-left:20px">15</span>
                    </div>
                <div class="verticalLine2">
                  <b><p>參與話題</p></b>
                  <span style="font-family:Times;font-size:25px; margin-left:20px">55</span>
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
       
      <!--第三區-->
      <div class="col mainarea">
        
        <div class="row">
          <div class="chatdiv">
            <span class="">話題標題</span>
            <p class="">話題內容話題內容</span>
          </div>
        </div>
        <div class="row">
          <div class="chatdiv">
            <span class="">話題標題</span>
            <p class="">話題內容話題內容</span>
          </div>
        </div>
        <div class="row">
          <div class="chatdiv">
            <span class="">話題標題</span>
            <p class="">話題內容話題內容</span>
          </div>
        </div>
        <div class="row">
          <a href="newtopic.html"><h2>"+"</h2></a>
        </div>
      </div>


      </div>
    </div>
  
  
</body>
</html>
