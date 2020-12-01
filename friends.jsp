<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
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
      #sq{
        width: 60px;
        height: 60px;
        border-radius: 50%;
        border: 1px solid rgba(255,255,255,1.00);
        top:12px;
        left: 60px;
      }
      #box1{
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
  margin-top:18px;
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
            <a class="nav-link active" href="member.html">User name</a>
          </li>
          <li class="nav-item" style="height: 10%">
            <a class="nav-link active" href="homepage.html">話題</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">通知</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="friends.html">好友</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="chat.html">聊天</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">登出</a>
          </li>
          <li class="nav-item" style="height: 17%"></li>
        </ul>
      </div>

      <!--第二區-->
      <div class="col-8 mainarea">
         <span style="color: #5B5B5B; font-size: 23px;position:absolute; top: 10px;">好友列表</span>
         <div class="frienddiv">
            <div id="box1">
              <img src="img/test.jpg" id="sq"style="z-index:2;position: relative;">  
                
                <div class="member_name">
                  <p>name&nbsp;&nbsp;♀</p>
                </div>
                <div class="signature">
                  <p>個簽</p>
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
                  <p>自介自介自介自介自介自介自介自介自介自介自介自介自介</p>
                </div>
                </div>
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
