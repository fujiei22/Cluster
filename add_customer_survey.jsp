<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>add</title>
</head>
<body>
<%
String email =(String)session.getAttribute("email");
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
           sql="use `cluster`";
           con.createStatement().execute(sql);
           String new_music=request.getParameter("music");
           String new_movie=request.getParameter("movie");
           String new_sport=request.getParameter("sport");
           String new_game=request.getParameter("game");
           String new_travel=request.getParameter("travel");
           String new_food=request.getParameter("food");

           sql="UPDATE `member` SET `Music`='" + new_music + "', `Movie`='" + new_movie + "', `Sport`='" + new_sport + "', `Game`='" + new_game + "', `Travel`='" + new_travel + "', `Food`='" + new_food + "' WHERE `Email` = '" + email + "'";
           con.createStatement().execute(sql);
           response.setHeader("Refresh","customer_survey.jsp");
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