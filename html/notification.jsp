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

    <style type="text/css">

		html,body{
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