<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>

<title>留言版</title>
</head>
<body>
<a href="viewpost.jsp?page=1">查看留言</a><p>
<form action="addpost.jsp" method="post" >
姓名：<input type="text" name="postname"><br>
主題：<input type="text" name="subject"><br>
內容：<textarea rows=5 name="content"></textarea><br>
<input type="submit" name="Submit" value="送出">
<input type="Reset" name="Reset" value="清除">
</form>
</body>
</html>
