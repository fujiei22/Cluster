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

    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<div class="limiter">
  <div class="container-login100">
    <div class="wrap-login100">
      <form class="login100-form" action="logincheck.jsp" method="post">
        <span class="login100-form-title">
        登入
        </span>
      <div class="wrap-input100">
      <input class="input100" type="text" name="email" placeholder="Email">
      <span class="focus-input100"></span>
      <span class="symbol-input100">
      </span>
      </div>
      <div class="wrap-input100">
      <input class="input100" type="password" name="password" placeholder="Password">
      <span class="focus-input100"></span>
      <span class="symbol-input100">
      </span>
      </div>
      <div class="container-login100-form-btn">
      <button class="login100-form-btn">
      登入
      </button>
      <a class="login200-form-btn" onclick="javascript:location.href='register.jsp'">
      註冊
      </a>
      </div>
      <div class="text-center">
        <a class="txt2" href="#">
        忘記密碼
        </a>
      </div>
      <div class="text-center">
      </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>