<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>首頁</title>
    <!-- bootstrap required-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
     <link href="css/headerfooter.css" rel="stylesheet" media="screen">
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-light main-nav" style="background-color:white;">
      <div class="container">
          <div class="navbar-collapse collapse nav-content order-2">
              <ul class="nav navbar-nav">
                <li class="nav-item">
                  <a class="navbar-brand" href="#">
                    <img src="img/logo.png" width="10%" height="auto">
                </a>
              </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="#簡介" style="color:#2B2B2B;">簡介</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="#特色" style="color:#2B2B2B;">特色</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="#功能展示" style="color:#2B2B2B;">功能展示</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="#下載" style="color:#2B2B2B;">下載</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="login.jsp" style="color:#2B2B2B;">註冊/登入</a>
                  </li>
              </ul>
          </div>
          </div>
  </nav>

<div class="container container-fluid"></div>
  <div class="row justify-content-center">
    <div class="col-sm-12">
      <div id="myCarousel" class="carousel slide icon3big" data-ride="carousel" data-interval="3500">
        <ol class="carousel-indicators" >
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
          <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner" >
          <div class="carousel-item active" >
            <img class="d-block w-100 img-fluid" src="img/ad2.jpg">
          </div>
          <div class="carousel-item" >
            <a href="new.html"><img class="d-block w-100 img-fluid" src="img/ad2.jpg"></a>
          </div>
          <div class="carousel-item" >
            <a href="hot.html"><img class="d-block w-100 img-fluid" src="img/ad2.jpg"></a>
          </div>
          <div class="carousel-item" >
            <a href="recipe.html"><img class="d-block w-100 img-fluid" src="img/ad2.jpg"></a>
          </div>
          <div class="carousel-item" >
            <img class="d-block w-100 img-fluid" src="img/ad2.jpg">
          </div>
        </div>

        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
     </div>
    </div>
  </div>
</div>

<div class="row container-fluid" style="margin-top:80px;margin-bottom:80px">
  <div class="col-sm-2"></div>
  <div class="col-sm-4 aside"><img src="img/logo.png" width="40%" height="auto"></div>
  <div class="col-sm-4 aside">
      <div class="row">
        <div class="col-sm-12">
          <p class="maintitle"><a name="簡介">簡介</a></p>
        </div>
        <div class="col-sm-12" >
          <p>Hello!</p>
          <p>Hello!Hello!</p>
          <p>Hello!Hello!Hello!</p>
          <p>Hello!Hello!v</p>
          <p>HelloHello!v!</p>
          <p>HelloHello!vHello!Hello!!</p>
        </div>
      </div>
    </div>
  <div class="col-sm-2"></div>
</div>

<div class="row container-fluid" style="background-color:#2B2B2B;padding:80px;color:white;">
  <div class="col-sm-2"></div>
        <div class="col-sm middle middle1">
          <a name="特色"><p>特色</p></a>
          <p>特色特色特色特色特色特色<br>
          特色特色特色特色特色<br>
          特色特色特色特色特色<br>
          特色特色特色特色特色</p>
        </div>
        <div class="col-sm middle middle3">
          <p>特色</p>
          <p>特色特色特色特色特色特色<br>
          特色特色特色特色特色<br>
          特色特色特色特色特色<br>
          特色特色特色特色特色</p>
        </div>
        <div class="col-sm middle middle2">
          <p>特色</p>
          <p>特色特色特色特色特色特色<br>
          特色特色特色特色特色<br>
          特色特色特色特色特色<br>
          特色特色特色特色特色</p>
        </div>
  <div class="col-sm-2"></div>
</div>

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.21.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.21.0/firebase-analytics.js"></script>

<script>
  new Photostack( document.getElementById( 'photostack-1' ), {
  callback : function( item ) {
  }
} );
  new Photostack( document.getElementById( 'photostack-2' ), {
  callback : function( item ) {
  }
} );
  new Photostack( document.getElementById( 'photostack-3' ), {
  callback : function( item ) {
  }
} );
</script>

<!--廣告輪播秒數-->
<script>
  $('.carousel').carousel({
    interval:3500
  })
</script>

<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {   
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql;
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else
        {      
           sql="CREATE DATABASE IF NOT EXISTS `cluster`;";
           con.createStatement().execute(sql);        
           sql="USE `cluster`";
           con.createStatement().execute(sql);
           sql="CREATE TABLE IF NOT EXISTS `member`";
            sql+="(`Name` VARCHAR(30),";
            sql+="`Gender` VARCHAR(30),";
            sql+="`Birthday` VARCHAR(30),";
            sql+="`Email` VARCHAR(30),";
            sql+="`Password` VARCHAR(30),";
            sql+="PRIMARY KEY(`Email`))";

            sql="CREATE TABLE IF NOT EXISTS `post`";
            sql+="(`pno` TINYINT(4) AUTO_INCREMENT,";
            sql+="`PostName` VARCHAR(30),";
            sql+="`Email` VARCHAR(30),";
            sql+="`Subject` VARCHAR(30),";
            sql+="`Content` TEXT,";
            sql+="`PostDate` DATE,";
            sql+="PRIMARY KEY(pno))";
            con.createStatement().execute(sql);       
            //out.println("Member建立成功");    
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