<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
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

     <style>
      #titleword {
         position: absolute;
         left: 130px;
         top: 200px;
         z-index: 1;
         font-size:70px;
       }
       .box1{
         width: 150px;
         height: 150px;
         max-width:  100%;
         display:flex;
         align-items:center;
         justify-content:center;
       }
     
    </style>
</head>

<body>

 <nav class="navbar navbar-expand-lg navbar-light">
   <a class="navbar-brand" href="index.jsp">Cluster</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
     <span class="navbar-toggler-icon"></span>
   </button>
 
   <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
     <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
       <li class="nav-item">
         <a class="nav-link" href="#簡介">簡介</a>
       </li>
       <li class="nav-item">
         <a class="nav-link" href="#特色">特色</a>
       </li>
       <li class="nav-item">
         <a class="nav-link" href="#功能展示">功能展示</a>
       </li>
       <li class="nav-item">
         <a class="nav-link" href="login.jsp">註冊/登入</a>
       </li>
     </ul>
     <form class="form-inline my-2 my-lg-0">
       <input class="form-control mr-sm-2" type="search" placeholder="Search">
       <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
     </form>
   </div>
 </nav>

 
 <div class="container-fluid" style="margin-top:40px;margin-bottom:80px">
   <div class="row">
 <div class="col-sm-2">
   <span id="titleword">Cluster<br>intro</span>
 </div>
 <div class="col-sm">
 <div id="carouselExampleIndicators" class="carousel slide carousel1" data-ride="carousel">
   <ol class="carousel-indicators">
     <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
     <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
     <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
   </ol>
   <div class="carousel-inner">
     <div class="carousel-item active">
       <img class="d-block w-100" src="img/ad2.jpg" alt="First slide">
     </div>
     <div class="carousel-item">
       <img class="d-block w-100" src="img/ad2.jpg" alt="Second slide">
     </div>
     <div class="carousel-item">
       <img class="d-block w-100" src="img/ad2.jpg" alt="Third slide">
     </div>
   </div>
   <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
     <span class="sr-only">Previous</span>
   </a>
   <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
     <span class="carousel-control-next-icon" aria-hidden="true"></span>
     <span class="sr-only">Next</span>
   </a>
 </div>
</div>
</div>
</div>

<div class="container-fluid" style="margin-top:120px;margin-bottom:80px">
 <div class="row">
 <div class="col-sm-2"></div>
 <div class="col-sm-4 aside">
   <img src="img/test.jpg" width="40%" height="auto">
   <br>
   <img src="img/logo.png" width="30%" height="auto" style="margin-left:-30px;">
 </div>
 <div class="col-sm-6 aside">
     <div class="row">
       <div class="col-sm-12">
         <h2 class="maintitle"><a name="簡介">簡介</a></h2>
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
   </div>
 <div class="col-sm-2"></div>
</div>

<div class="container-fluid" style="background-color:#2B2B2B;padding:80px;color:white;">
<div class="row">
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
</div>

<div class="container-fluid"　>
<div id="carouselExampleIndicators1" class="carousel slide"style="margin-top:50px;margin-bottom:50px">
 <div class="carousel-inner">
   <div class="carousel-item active" style="background-color:white">
     <div class="row container-fluid" style="margin-top:80px;margin-bottom:80px">
       <div class="col-sm-2"></div>
       <div class="col-sm-4 aside">
         <video width="320" height="240" loop="true" autoplay="autoplay" muted>
           <source src="img/UR.mp4" type="video/mp4" >
           Your browser does not support the video tag.
         </video>
           
       </div>
       <div class="col-sm-4 aside">
           <div class="row">
             <div class="col-sm-12">
               <h2 class="maintitle"><a name="功能展示">功能展示</a></h2>
             </div>
             <div class="col-sm-12" >
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
   </div>
   <div class="carousel-item" style="background-color:white">
     <div class="row container-fluid" style="margin-top:80px;margin-bottom:80px">
       <div class="col-sm-2"></div>
       <div class="col-sm-4 aside">
         <video width="320" height="240" loop="true" autoplay="autoplay" muted>
           <source src="img/UR.mp4" type="video/mp4" >
           Your browser does not support the video tag.
         </video>
           
       </div>
       <div class="col-sm-4 aside">
           <div class="row">
             <div class="col-sm-12">
               <h2 class="maintitle">功能展示</h2>
             </div>
             <div class="col-sm-12" >
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
   </div>
   <div class="carousel-item" style="background-color:white">
     <div class="row container-fluid" style="margin-top:80px;margin-bottom:80px">
       <div class="col-sm-2"></div>
       <div class="col-sm-4 aside">
         <video width="320" height="240" loop="true" autoplay="autoplay" muted>
           <source src="img/UR.mp4" type="video/mp4" >
           Your browser does not support the video tag.
         </video>
           
       </div>
       <div class="col-sm-4 aside">
           <div class="row">
             <div class="col-sm-12">
               <h2 class="maintitle">功能展示</h2>
             </div>
             <div class="col-sm-12" >
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
   </div>
 </div>
 <a class="carousel-control-prev" href="#carouselExampleIndicators1" role="button" data-slide="prev">
   <span aria-hidden="true" style="color: black;font-size: 30px;"><</span>
   <span class="sr-only">Previous</span>
 </a>
 <a class="carousel-control-next" href="#carouselExampleIndicators1" role="button" data-slide="next">
   <span aria-hidden="true" style="color: black;font-size: 30px;">></span>
   <span class="sr-only">Next</span>
 </a>
</div>
</div>

<div class="container-fluid" style="background-color:#2B2B2B;padding:80px;color:white;">
<div class="row justify-content-center" style="margin-bottom: 50px;">
 <h2>FAQ</h2>
</div>
<div class="row">
 <div class="col-sm-2"></div>
       <div class="col-sm" style="margin-bottom: 50px;text-align: center;">
         Q：要如何使用？<br>
         A：ｗｗｗｗｗ
       </div>
       <div class="col-sm" style="margin-bottom: 50px;text-align: center;">
         Q：要如何使用？<br>
         A：ｗｗｗｗｗ
       </div>
 <div class="col-sm-2"></div>
</div>
<div class="row">
 <div class="col-sm-2"></div>
 <div class="col-sm" style="margin-bottom: 50px;text-align: center;">
   Q：要如何使用？<br>
   A：ｗｗｗｗｗ
 </div>
 <div class="col-sm" style="margin-bottom: 50px;text-align: center;">
   Q：要如何使用？<br>
   A：ｗｗｗｗｗ
 </div>
 <div class="col-sm-2"></div>
</div>
</div>

</div>

<div class="container-fluid" style="background-color:white;padding:80px;color:black;">
 <div class="row">
 <div class="col-sm-2"></div>
 <div class="col-sm-4 aside">
   <p>有任何問題？</p>
   <p>聯絡我們</p>
   <img src="img/facebook.png" style="width:20px;height:20px;filter:invert(100%)">　
   <img src="img/email.png" style="width:20px;height:20px;filter:invert(100%)">　
   <img src="img/phone-call.png" style="width:20px;height:20px;filter:invert(100%)">
 </div>
 <div class="col-sm-4 aside">
   <form action="">
     <label for="formname">您的名字</label><br>
       <input type="text" id="formname" name="formname"><br>
     <label for="topic">主旨</label><br>
       <input type="text" id="topic" name="topic"><br>  
     <label for="formaddress">聯絡信箱</label><br>
       <input type="text" id="formaddress" name="formaddress"><br>
     <label for="formcontent">事由</label><br>
       <input type="text" id="formcontent" name="formcontent" style="height: 80px;"><br><br>
     <input type="submit" value="Submit">
   </form>
   </div>
 <div class="col-sm-2"></div>
</div>
</div>

<div class="container-fluid" style="background-color:whiteB;color:black;">
<div class="row justify-content-center">
 <p>copyright</p>
</div>
</div>


<!--廣告輪播秒數-->
<script>
  $('.carousel1').carousel({
    interval:2000
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
           sql+="`Createtime` VARCHAR(30),";
           sql+="`Music` VARCHAR(30),";
           sql+="`Movie` VARCHAR(30),";
           sql+="`Sport` VARCHAR(30),";
           sql+="`Game` VARCHAR(30),";
           sql+="`Travel` VARCHAR(30),";
           sql+="`Food` VARCHAR(30),";
           sql+="PRIMARY KEY(`Email`))";
           con.createStatement().execute(sql);

           sql="CREATE TABLE IF NOT EXISTS `post`";
           sql+="(`pno` INT(4) AUTO_INCREMENT,";
           sql+="`PostName` VARCHAR(30),";
           sql+="`Email` VARCHAR(30),";
           sql+="`Subject` VARCHAR(30),";
           sql+="`Content` TEXT,";
           sql+="`Category` VARCHAR(30),";
           sql+="`PostDate` DATE,";
           sql+="PRIMARY KEY(pno))";
           con.createStatement().execute(sql);

           sql="CREATE TABLE IF NOT EXISTS `skin`";
           sql+="(`imgno` INT(20) AUTO_INCREMENT,";
           sql+="`file_path` VARCHAR(30),";
           sql+="`img_file` VARCHAR(30),";
           sql+="PRIMARY KEY(imgno))";
           //sql+="INSERT `skin` VALUE (1,'img/header/accessories/',accessories),(2,'img/header/accessories/','accessories'),(3,'img/header/accessories/','accessories'),(4,'img/header/accessories/','accessories'),(5,'img/header/accessories/','accessories'),(6,'img/header/accessories/','accessories'),(7,'img/header/accessories/','accessories'),(8,'img/header/accessories/','accessories'),(9,'img/header/backhair/','backhair'),(10,'img/header/backhair/','backhair'),(11,'img/header/backhair/','backhair'),(12,'img/header/backhair/','backhair'),(13,'img/header/backhair/','backhair'),(14,'img/header/backhair/','backhair'),(15,'img/header/backhair/','backhair'),(16,'img/header/backhair/','backhair'),(17,'img/header/backhair/','backhair'),(18,'img/header/backhair/','backhair'),(19,'img/header/backhair/','backhair'),(20,'img/header/backhair/','backhair'),(21,'img/header/backhair/','backhair'),(22,'img/header/backhair/','backhair'),(23,'img/header/backhair/','backhair'),(24,'img/header/backhair/','backhair'),(25,'img/header/backhair/','backhair'),(26,'img/header/backhair/','backhair'),(27,'img/header/backhair/','backhair'),(28,'img/header/backhair/','backhair'),(29,'img/header/backhair/','backhair'),(30,'img/header/backhair/','backhair'),(31,'img/header/backhair/','backhair'),(32,'img/header/backhair/','backhair'),(33,'img/header/backhair/','backhair'),(34,'img/header/backhair/','backhair'),(35,'img/header/backhair/','backhair'),(36,'img/header/backhair/','backhair'),(37,'img/header/backhair/','backhair'),(38,'img/header/backhair/','backhair'),(39,'img/header/backhair/','backhair'),(40,'img/header/backhair/','backhair'),(41,'img/header/backhair/','backhair'),(42,'img/header/backhair/','backhair'),(43,'img/header/backhair/','backhair'),(44,'img/header/backhair/','backhair'),(45,'img/header/clothes/','clothes'),(46,'img/header/clothes/','clothes'),(47,'img/header/clothes/','clothes'),(48,'img/header/clothes/','clothes'),(49,'img/header/clothes/','clothes'),(50,'img/header/clothes/','clothes'),(51,'img/header/clothes/','clothes'),(52,'img/header/clothes/','clothes'),(53,'img/header/clothes/','clothes'),(54,'img/header/clothes/','clothes'),(55,'img/header/clothes/','clothes'),(56,'img/header/clothes/','clothes'),(57,'img/header/clothes/','clothes'),(58,'img/header/clothes/','clothes'),(59,'img/header/clothes/','clothes'),(60,'img/header/clothes/','clothes'),(61,'img/header/clothes/','clothes'),(62,'img/header/clothes/','clothes'),(63,'img/header/clothes/','clothes'),(64,'img/header/clothes/','clothes'),(65,'img/header/eyebrow/','eyebrow'),(66,'img/header/eyebrow/','eyebrow'),(67,'img/header/eyebrow/','eyebrow'),(68,'img/header/eyebrow/','eyebrow'),(69,'img/header/eyes/','eyes'),(70,'img/header/eyes/','eyes'),(71,'img/header/eyes/','eyes'),(72,'img/header/eyes/','eyes'),(73,'img/header/eyes/','eyes'),(74,'img/header/eyes/','eyes'),(75,'img/header/eyes/','eyes'),(76,'img/header/eyes/','eyes'),(77,'img/header/eyes/','eyes'),(78,'img/header/eyes/','eyes'),(79,'img/header/eyes/','eyes'),(80,'img/header/eyes/','eyes'),(81,'img/header/eyes/','eyes'),(82,'img/header/eyes/','eyes'),(83,'img/header/eyes/','eyes'),(84,'img/header/eyes/','eyes'),(85,'img/header/eyes/','eyes'),(86,'img/header/eyes/','eyes'),(87,'img/header/eyes/','eyes'),(88,'img/header/eyes/','eyes'),(89,'img/header/fronthair/','fronthair'),(90,'img/header/fronthair/','fronthair'),(91,'img/header/fronthair/','fronthair'),(92,'img/header/fronthair/','fronthair'),(93,'img/header/fronthair/','fronthair'),(94,'img/header/fronthair/','fronthair'),(95,'img/header/fronthair/','fronthair'),(96,'img/header/fronthair/','fronthair'),(97,'img/header/fronthair/','fronthair'),(98,'img/header/fronthair/','fronthair'),(99,'img/header/fronthair/','fronthair'),(100,'img/header/fronthair/','fronthair'),(101,'img/header/fronthair/','fronthair'),(102,'img/header/fronthair/','fronthair'),(103,'img/header/fronthair/','fronthair'),(104,'img/header/fronthair/','fronthair'),(105,'img/header/fronthair/','fronthair'),(106,'img/header/fronthair/','fronthair'),(107,'img/header/fronthair/','fronthair'),(108,'img/header/fronthair/','fronthair'),(109,'img/header/fronthair/','fronthair'),(110,'img/header/fronthair/','fronthair'),(111,'img/header/fronthair/','fronthair'),(112,'img/header/fronthair/','fronthair'),(113,'img/header/fronthair/','fronthair'),(114,'img/header/fronthair/','fronthair'),(115,'img/header/fronthair/','fronthair'),(116,'img/header/fronthair/','fronthair'),(117,'img/header/fronthair/','fronthair'),(118,'img/header/fronthair/','fronthair'),(119,'img/header/fronthair/','fronthair'),(120,'img/header/fronthair/','fronthair'),(121,'img/header/fronthair/','fronthair'),(122,'img/header/fronthair/','fronthair'),(123,'img/header/fronthair/','fronthair'),(124,'img/header/fronthair/','fronthair'),(125,'img/header/fronthair/','fronthair'),(126,'img/header/fronthair/','fronthair'),(127,'img/header/fronthair/','fronthair'),(128,'img/header/mouth/','mouth'),(129,'img/header/mouth/','mouth'),(130,'img/header/mouth/','mouth'),(131,'img/header/mouth/','mouth'),(132,'img/header/mouth/','mouth'),(133,'img/header/mouth/','mouth'),(134,'img/header/mouth/','mouth'),(135,'img/header/mouth/','mouth'),(136,'img/header/skin/','skin'),(137,'img/header/skin/','skin'),(138,'img/header/skin/','skin'),(139,'img/header/skin/','skin')";
           //out.println(sql);
           con.createStatement().execute(sql);

           sql="CREATE TABLE IF NOT EXISTS `memberskin`";
           sql+="(`Email` VARCHAR(30),";
           sql+="`Skin` VARCHAR(30),";
           sql+="`Eyes` VARCHAR(30),";
           sql+="`Eyebrow` VARCHAR(30),";
           sql+="`Mouth` VARCHAR(30),";
           sql+="`Fronthair` VARCHAR(30),";
           sql+="`Backhair` VARCHAR(30),";
           sql+="`Clothes` VARCHAR(30),";
           sql+="`Accessories` VARCHAR(30),";
           sql+="PRIMARY KEY(Email))";
           con.createStatement().execute(sql);

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