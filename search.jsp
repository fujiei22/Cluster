<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
           String search = request.getParameter("search");
           %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>話題</title>
    <!-- bootstrap required-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="css/header.css" rel="stylesheet" media="screen">
    <link href="css/icon/css/all.css" rel="stylesheet">

    <style>
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
          border-radius: 10%;
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
#skin{
  z-index:2;
  height: 80px;
  width:80px;
  position:absolute;
  left:20px;
  top:15%;
  border-radius: 50%;
  border: 1px solid rgba(255,255,255,1.00);
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
  height: 100px;
  width:100px;
  position:absolute;
}
#eyes2{
  z-index:3;
  height: 100px;
  width:100px;
  position:absolute;
}
#eyebrow2{
  z-index:4;
  height: 100px;
  width:100px;
  position:absolute;
}
#mouth2{
  z-index:5;
  height: 100px;
  width:100px;
  position:absolute;
}
#fronthair2{
  z-index:6;
  height: 100px;
  width:100px;
  position:absolute;
}
#backhair2{
  z-index:7;
  height: 100px;
  width:100px;
  position:absolute;
}
#clothes2{
  z-index:8;
  height: 100px;
  width:100px;
  position:absolute;
}
#accessories2{
  z-index:9;
  height: 100px;
  width:100px;
  position:absolute;
}

       </style>
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
<!--無法顯示名字-->
    <span style="position:absolute; left: 120px;font-size:larger;"><%--=name--%></span></a>
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


    

      <!--第二區/搜尋結果的顯示頁面 -->
      <div class="col-8 mainarea">
        <div class="mainboard" style="height:80%">
        <form class="form-inline my-2 my-lg-0" action="search.jsp">
          <input class="form-control mr-sm-2" type="search" placeholder="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        <div class="h2div" ><h2>話題</h2></div>

          <ul class="nav justify-content-end" id="myTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" id="home-tab" data-toggle="tab" href="#search" role="tab" aria-controls="search" aria-selected="true">"<%=search%>"的搜尋結果</a>
            </li>
          </ul>

      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="search" role="tabpanel" aria-labelledby="profile-tab">
        <%
          sql = "SELECT * FROM `post` WHERE CONCAT(IFNULL(`Subject`,''),IFNULL(`Content`,'')) LIKE '%"+search+"%'";
          ResultSet searchRs=con.createStatement().executeQuery(sql);
          boolean flag = true;

          while(searchRs.next()){
            flag = false;
            String SubjectRs=searchRs.getString(4);
            String ContentRs=searchRs.getString(5);
            String CategoryRs=searchRs.getString(6);
            out.println("<div class='row'>");

            out.println("<div class='maindiv'");
            out.println("<span class=''>"+SubjectRs+"</span>");
            out.println("<p class=''>"+ContentRs+"</span><br>");
            out.println("<span class='badge badge-primary'>"+CategoryRs+"</span>");
            out.println("</div>");
            out.println("</div>");
         }
         if(flag){
            out.println("<SCRIPT LANGUAGE='JavaScript'>");
            out.println("alert('查無資料')");
            out.println("history.back();");
            out.println("</SCRIPT>");
            con.close();
         }
        %>
          <%-- <div class="row">
            <img src="img/test.jpg" style="width:10%;margin:10px;">
          <div class="maindiv">
              <span class="">話題標題</span>
              <p class="">話題內容話題內容</span><br>
                <span class="badge badge-primary">音樂</span>
            </div>
            <div class="percent"><h2>80%</h2></div>
          </div> 

          <div class="row" >
            <img src="img/test.jpg" style="width:10%;margin:10px;">
          <div class="maindiv">
              <span class="">話題標題</span>
              <p class="">話題內容話題內容</span><br>
                <span class="badge badge-primary">音樂</span>
            </div>
            <div class="percent"><h2>80%</h2></div>
          </div> 
           --%>
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



  <script>
    function openForm() {
      document.getElementById("myForm").style.display = "block";
    }
    
    function closeForm() {
      document.getElementById("myForm").style.display = "none";
    }
    </script>

</body>
</html>