<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

    <title>會員頁</title>
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
       	#header{
       		height: 100px;
       		position:absolute;
       		left:170px;
       		top:5%;
       		border: 1.5px solid #D0D0D0; 
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
       	    top:610px;

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
       </style>
   </head>
   <body>
	<a href="member.jsp"><img src="img/back.png" id="backicon"></a>
   	<span style="position:absolute; left:22%; top:30px;font-family: Microsoft JhengHei;color: #5B5B5B;"><b>個人檔案</b></span>
   	<div class="fristdiv">
   		<from>
   			<span style="position:absolute; left:50px; top:15%;font-family: Microsoft JhengHei;color: #5B5B5B;">更改頭像</span>
   			<a href="header.jsp"><img src="img/test.jpg" id="header"></a>
            <span style="position:absolute; left:50px; top:30%;font-family: Microsoft JhengHei;color: #5B5B5B;">暱稱</span>
            <input value="null" style="position:absolute;left:170px;top:30%; ">
            <span style="position:absolute; left:50px; top:40%;font-family: Microsoft JhengHei;color: #5B5B5B;">性別</span>
            <select style="position:absolute;left:170px;top:40%; ">
              <option>男性</option>
              <option>女性</option>
              <option value="3">不方便透露</option>
            </select>
            <span style="position:absolute; left:50px; top:50%;font-family: Microsoft JhengHei;color: #5B5B5B;">喜歡的標籤</span>
                <div id="liketag">                
                 <div class="tagbox">#園藝</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#電影</div>   
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <img src="img/pen.png" class="penicon">               
                 </div>
            <span style="position:absolute; left:50px; top:60%;font-family: Microsoft JhengHei;color: #5B5B5B;">討厭的標籤</span>   
                <div id="hatetag">                
                 <div class="tagbox">#園藝</div>
                 <div class="tagbox">#手沖咖啡</div>
                 <div class="tagbox">#電影</div> 
                 <div class="tagbox">#手沖咖啡</div>   
                 <img src="img/pen.png" class="penicon">     
      
                 </div>
            <span style="position:absolute; left:50px; top:70%;font-family: Microsoft JhengHei;color: #5B5B5B;">個簽</span>       
            <input value="原本的個簽" style="position:absolute;left:170px;top:70%;width:300px; ">  
            <span style="position:absolute; left:50px; top:85%;font-family: Microsoft JhengHei;color: #5B5B5B;">自介</span> 
            <textarea value="原本的自介" style="position:absolute;left:170px;top:80%;width:300px; height:80px;"></textarea>        
   		</from>
   	</div>
   	<span style="position:absolute; left:22%; top:580px;font-family: Microsoft JhengHei;color: #5B5B5B;"><b>帳號密碼</b></span>
   	<div class="seconddiv">
   			<span style="position:absolute; left:50px; top:10%;font-family: Microsoft JhengHei;color: #5B5B5B;">E-mail</span>
   			<input value="原本的E-mail" style="position:absolute;left:170px;top:10%;width:400px; ">  
   			<span style="position:absolute; left:50px; top:30%;font-family: Microsoft JhengHei;color: #5B5B5B;">變更密碼</span>
   			<span style="position:absolute; left:70px; top:40%;font-family: Microsoft JhengHei;color: #5B5B5B;">請輸入舊密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:40%;">
   			<span style="position:absolute; left:70px; top:60%;font-family: Microsoft JhengHei;color: #5B5B5B;">請輸入新密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:60%;">
   			<span style="position:absolute; left:70px; top:80%;font-family: Microsoft JhengHei;color: #5B5B5B;">確認密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:80%;">
   	</div>
   	<button type="button" class="btn btn-light" style="position:absolute;top:860px;left:45%; margin-bottom: 20px;">確認修改</button>
   </body>
   </html>