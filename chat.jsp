<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>聊天</title>
    <!-- bootstrap required-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="menu.js"></script> 
        <link rel="stylesheet" type="text/css" href="style/comm.css"/>
<link rel="stylesheet" type="text/css" href="style/layout.css"/>
<script type="text/javascript" src="script/jquery-1.4.2.min.js"></script>


<style type="text/css">
    html,body{
      height:100%;
    }
    
      .leftnav{
        background-color: rgb(141, 141, 141);
        height: 100%;
        margin-right:0px;      
      } 
    a{
      color:black;
      text-decoration:none;
    }
    a:hover{
      text-decoration:none;
      color:black;
    }
    #box1{
      width:240px;
      height: 100%;
        }

ul, li {
  padding: 10px 0;
  list-style: none;
}
.abgne_tab {
  width:240px;
  height: 91%;
  z-index: 2;
  position:absolute;
  top:50px;
  overflow:scroll;
}
.abgne_tab::-webkit-scrollbar-track
{
  border-radius: 10px;
}

.abgne_tab::-webkit-scrollbar
{
  width: 10px;
}

.abgne_tab::-webkit-scrollbar-thumb
{
  border-radius: 10px;
  background-color:rgba(108,108,108,0.2);
}


ul.tabs {
  height: 100%;
}
ul.tabs li {
  width:230px;
  height:70px;
  border: none;
  background: #fff;
  position: relative;
}
ul.tabs li a {
  display: block;
  color: #000;
  text-decoration: none;
}
ul.tabs li a:hover {
  background:   #fff;
}
ul.tabs li.active  {
  background:  #F0F0F0;
}
ul.tabs li.active a:hover {
  background:  #F0F0F0;
}
div.tab_container {
  width: 76%;
  height: 100%;
  position:absolute;
  left:24%;
  bottom: 0px;
  border: none;
  z-index: 1;
}
.sq{
  width: 50px;
  height: 50px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  position:absolute;
  left:5px;
      }
.fname{
  position:absolute;
  left:65px;
  top:3px;
}
.mes1{
  width:150px;
  height: 30px;
  position:absolute;
  left: 65px;
  top:35px;
  font-size: 10px;
}
.mestop{
  width:575px;
  height:80px;
  position:fixed;
  top: 0px;
}
.fname2{
  font-size:27px;
  position:absolute;
  top: 10px;
  left:10px;
}
.online{
  font-size:7px;
  position:absolute;
  top:45px;
  left:20px;
  z-index: 99;
}
.star{
  width:30px;
  position:absolute;
  top:25px;
  right: 100px;
}
.block{
  width:25px;
  position:absolute;
  top:29px;
  right: 60px;
}
.more{
  width:25px;
  position:absolute;
  top:29px;
  right: 20px;
}
.jq-dropdown {
    display: none;
    background:#fff;
    width: 80px;
    position:absolute;
    top:60px;
    right: 10px;
    text-align: center;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);   
  }
.mesarea{
  width:575px;
  height:480px;
  position:absolute;
  top:80px;
  overflow:scroll;
}
.mesarea::-webkit-scrollbar-track
{
  border-radius: 10px;
}

.mesarea::-webkit-scrollbar
{
  width: 10px;
}

.mesarea::-webkit-scrollbar-thumb
{
  border-radius: 10px;
  background-color:rgba(108,108,108,0.2);
}
.memberbox{
  width: 235.2px;
  height: 100%;
  position:absolute;
  right: 0px;
  border-left: 2px solid  #E0E0E0;
}
.sq2{
  width: 100px;
  height: 100px;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
  position:absolute;
  top:40px;
  left: 67.6px;
}
.mesr{
  border-radius: 15px;
  padding: 3px 10px;
  text-align: center;
  width: auto;
  background: #2894FF;
  display: inline-block;
  margin-top: 5px;
  color: #fff;
  margin-right:5px;
  font-size: 15px;
}
.mesl{
  border-radius: 15px;
  padding: 3px 10px;
  text-align: center;
  width: auto;
  background:#E0E0E0;
  display: inline-block;
  margin-top: 5px;
  color:black;
  margin-left:5px;
  font-size: 15px;
}
.inputmes{
  width:575px;
  height: 50px;
  position:fixed;
  bottom:0px;
}
.send{
  width: 300px;
  border-radius: 10px;
  border-color: #E0E0E0;
  border-style:solid;
  border-width: 2px;
  position:absolute;
  top:10px;
  right: 70px;
}
.sendbtn{
  border-radius: 10px;
  border-color: #E0E0E0;
  border-style:solid;
  border-width: 2px;
  padding: 1px 5px;
  position:absolute;
  top:10px;
  right: 10px
}
.fname3{
  font-size: 25px;
  position:absolute;
  text-align:center;
  margin-top:150px;  
  width: 233.5px;
}


</style>
<script type="text/javascript">
$(function(){
  // 預設顯示第一個 Tab
  var _showTab = 0;
  var $defaultLi = $('ul.tabs li').eq(_showTab).addClass('active');
  $($defaultLi.find('a').attr('href')).siblings().hide();
 
  // 當 li 頁籤被點擊時...
  // 若要改成滑鼠移到 li 頁籤就切換時, 把 click 改成 mouseover
  $('ul.tabs li').click(function() {
    // 找出 li 中的超連結 href(#id)
    var $this = $(this),
      _clickTab = $this.find('a').attr('href');
    // 把目前點擊到的 li 頁籤加上 .active
    // 並把兄弟元素中有 .active 的都移除 class
    $this.addClass('active').siblings('.active').removeClass('active');
    // 淡入相對應的內容並隱藏兄弟元素
    $(_clickTab).stop(false, true).fadeIn().siblings().hide();
 
    return false;
  }).find('a').focus(function(){
    this.blur();
  });
}); 

$(document).ready(function(){
      $(".star").click(function(){
            $(".star").attr("src","../img/star2.png");
      });
});
function myFunction() {
  
confirm("確認封鎖該用戶");
}

$(function () {
  $('.jq-clickBtn').click(function (e) {
    e.preventDefault();
    $('.jq-clickBtn').toggleClass('active');
    $('.jq-dropdown').slideToggle();
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
      
      <div class="col-10 mainarea">
        <div class="mainboard" style="height:100%">
      <iframe src="http://localhost:3000/" style="height: 100%;margin: 0;padding:0;">
        你的瀏覽器不支援 iframe
      </iframe>
      </div>
      </div>
    </div>
      <!-- 第二區
      
      <div class="col-10 mainarea">
        <div id="box1">
         <div class="box2" style="padding: 10px;position:fixed; z-index: 999;width:240px; height: 50px;background: #fff;"> 
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" style="width:150px; height:30px;">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="height:30px; padding: 2.5px;">Search</button>
        </form>        
      </div>
      <div class="abgne_tab">
      <ul class="tabs">
      <li><a href="#tab1">
        <img src="img/test.jpg" class="sq">
        <span class="fname">Name1</span>
        <div class="mes1">
          訊息訊息訊息
        </div>
      </a></li>
      <li><a href="#tab2">
        <img src="img/test.jpg" class="sq">
        <span class="fname">Name2</span>
        <div class="mes1">
          訊息訊息訊息
        </div>        
      </a></li>

    </ul>
    </div>    
    <div class="tab_container">
      <div id="tab1" class="tab_content">
      <div class="mesarea">
       
        
      </div>        
        <div class="mestop">
          <span class="fname2">Name1</span>
          <span class="online">在線</span>
          <img src="img/star1.png" class="star">
          <img src="img/blockade.png" class="block" onclick="myFunction()">

          <li><a href="#" class="jq-clickBtn"><img src="img/more.png" class="more"></a>
          <ul class="jq-dropdown">
            <li><a href="#">檢舉</a></li>          
        </li></ul>
      </div>
      <div class="inputmes">
        <input type="text" class="send">
        <button type="submit" class="sendbtn">發送</button>
      </div>
      <div class="memberbox">
        <img src="img/test.jpg" class="sq2">
        <div class="fname3">Name1</div>
      </div>

        </div>

      <div id="tab2" class="tab_content">
        <div class="mesarea">
        <div style="width:50%;height:480px;position:absolute;right: 0px;text-align: right;">
        <div class="mesr">你好</div><br>
        <div class="mesr">訊息訊息訊息</div><br>
        <div class="mesr">訊息訊息訊息訊息訊息訊息</div><br>
      </div>
        <div style="width:50%;height:480px;position:absolute;left: 0px;text-align: left;">
        <div class="mesl">你好</div><br>
        <div class="mesl">訊息訊息訊息</div><br>
        <div class="mesl">訊息訊息訊息訊息訊息訊息</div><br>
      </div>
      </div>        
        <div class="mestop">
          <span class="fname2">Name2</span>
          <span class="online">離線</span>
          <img src="img/star1.png" class="star">
          <img src="img/blockade.png" class="block" onclick="myFunction()">

          <li><a href="#" class="jq-clickBtn"><img src="../img/more.png" class="more"></a>
          <ul class="jq-dropdown">
            <li><a href="#">檢舉</a></li>          
        </li></ul>
      </div>
      <div class="inputmes">
        <input type="text" class="send">
        <button type="submit" class="sendbtn">發送</button>
      </div>
      <div class="memberbox">
        <img src="img/test.jpg" class="sq2">
        <div class="fname3">Name2</div>
      </div>
      </div>

      </div> tab_container   
    </div>box1   
      </div>col-10-->


</div>
</div>
</body>
</html>
