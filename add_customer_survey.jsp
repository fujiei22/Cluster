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
           String new_read=request.getParameter("read");
           String new_draw=request.getParameter("draw");
           String new_game=request.getParameter("game");
           String new_movie=request.getParameter("movie");
           String new_sport=request.getParameter("sport");
           String new_dance=request.getParameter("dance");
           String new_travel=request.getParameter("travel");
           String new_shopping=request.getParameter("shopping");

           sql="UPDATE `member` SET `read`='" + new_read + "', `draw`='" + new_draw + "', `game`='" + new_game + "', `movie`='" + new_movie + "', `sport`='" + new_sport + "', `dance`='" + new_dance + "' , `travel`='" + new_travel + "', `shopping`='" + new_shopping + "' WHERE `Email` = '" + email + "'";
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