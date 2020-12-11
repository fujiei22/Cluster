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
        else
        {
            con.createStatement().execute("USE `cluster`");
            sql = "SELECT * FROM `member` WHERE `Email`='"+session.getAttribute("email")+"'"; 
			ResultSet rs =con.createStatement().executeQuery(sql);
			String name="", gender="", signature="", introduction="",  email="", pwd="";
			while(rs.next()){
	    		name=rs.getString("Name");
				gender=rs.getString("Gender");
				signature=rs.getString("Signature");
				introduction=rs.getString("Introduction");
				email=rs.getString("Email");
				pwd=rs.getString("Password");
			}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">

    <title>設定</title>
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
#skin{
  z-index:2;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0; 
}
#eyes{
  z-index:3;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#eyebrow{
  z-index:4;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#mouth{
  z-index:5;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#fronthair{
  z-index:6;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#backhair{
  z-index:7;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#clothes{
  z-index:8;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
#accessories{
  z-index:9;
  height: 100px;
  position:absolute;
  left:170px;
  top:5%;
  border: 1.5px solid #D0D0D0;
}
       </style>
	      </head>



   <body>
	<a href="member.jsp"><img src="img/back.png" id="backicon"></a>
   	<span style="position:absolute; left:22%; top:30px;font-family: Microsoft JhengHei;color: #5B5B5B;"><b>個人檔案</b></span>
   	<div class="fristdiv">
   		<form action="updatesetting.jsp" method="post">
   			<span style="position:absolute; left:50px; top:15%;font-family: Microsoft JhengHei;color: #5B5B5B;">更改頭像</span>
   			<a href="header.jsp">
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
        </a>
            <span style="position:absolute; left:50px; top:30%;font-family: Microsoft JhengHei;color: #5B5B5B;">暱稱</span>
            <input type="text" value="<%=name%>" name="name" style="position:absolute;left:170px;top:30%; ">
            <span style="position:absolute; left:50px; top:40%;font-family: Microsoft JhengHei;color: #5B5B5B;">性別</span>
            <select style="position:absolute;left:170px;top:40%;" name="gender" value="<%=gender%>">
              <option value="male">男性</option>
              <option value="female">女性</option>
              <option value="other">其他</option>
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
            <input value="<%=signature%>" name="signature" style="position:absolute;left:170px;top:70%;width:300px; ">  
            <span style="position:absolute; left:50px; top:85%;font-family: Microsoft JhengHei;color: #5B5B5B;">自介</span> 
            <textarea name="introduction" style="position:absolute;left:170px;top:80%;width:300px; height:80px;"><%=introduction%></textarea>        
   	</div>
   	<span style="position:absolute; left:22%; top:580px;font-family: Microsoft JhengHei;color: #5B5B5B;"><b>帳號密碼</b></span>
   	<div class="seconddiv">
   			<span style="position:absolute; left:50px; top:10%;font-family: Microsoft JhengHei;color: #5B5B5B;">E-mail</span>
   			<input value="<%=email%>" style="position:absolute;left:170px;top:10%;width:400px;"  disabled="disabled">  
   			<span style="position:absolute; left:50px; top:30%;font-family: Microsoft JhengHei;color: #5B5B5B;">變更密碼</span>

   			<span style="position:absolute; left:70px; top:40%;font-family: Microsoft JhengHei;color: #5B5B5B;">請輸入舊密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:40%;" name="oldpwd">
			   
   			<span style="position:absolute; left:70px; top:60%;font-family: Microsoft JhengHei;color: #5B5B5B;">請輸入新密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:60%;" name="newpwd">

   			<span style="position:absolute; left:70px; top:80%;font-family: Microsoft JhengHei;color: #5B5B5B;">確認密碼</span>
   			<input type="password" style="position:absolute;left:190px;top:80%;" name="renewpwd">
   	</div>
   	<button type="submit" class="btn btn-light" style="position:absolute;top:860px;left:45%; margin-bottom: 20px;">確認修改</button>
	      		</form>

<%
   con.close();
		}
		}
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
   %>
   </body>
   </html>