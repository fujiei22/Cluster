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
           
            // var data = '{"sepal length": 6.0, "sepal width": 2.2, "petal length": 4.0, "petal width": 1.0}';
            //String new_read=request.getParameter("read");
            //各新增一個cookie，名稱就叫各自的名字（ex:read、draw....)
           
            Cookie read_cookie = new Cookie("read", request.getParameter("read"));
            Cookie draw_cookie = new Cookie("draw", request.getParameter("draw"));
            Cookie game_cookie = new Cookie("game", request.getParameter("game"));
            Cookie movie_cookie = new Cookie("movie", request.getParameter("movie"));
            Cookie sport_cookie = new Cookie("sport", request.getParameter("sport"));
            Cookie dance_cookie = new Cookie("dance", request.getParameter("dance"));
            Cookie travel_cookie = new Cookie("travel", request.getParameter("travel"));
            Cookie shopping_cookie = new Cookie("shopping", request.getParameter("shopping"));
            response.addCookie(read_cookie);
            response.addCookie(draw_cookie);
            response.addCookie(game_cookie);
            response.addCookie(movie_cookie);
            response.addCookie(sport_cookie);
            response.addCookie(dance_cookie);
            response.addCookie(travel_cookie);
            response.addCookie(shopping_cookie);

            String new_read=request.getParameter("read");
            String new_draw=request.getParameter("draw");
            String new_game=request.getParameter("game");
            String new_movie=request.getParameter("movie");
            String new_sport=request.getParameter("sport");
            String new_dance=request.getParameter("dance");
            String new_travel=request.getParameter("travel");
            String new_shopping=request.getParameter("shopping");

         /*  var request = new XMLHttpRequest();
           request.open('POST', 'http://127.0.0.1:5000/predict', true);
           request.onload = function() {
             if (request.status >= 200 && request.status < 400) {
           
               // Success!
               console.log(request.responseText);
             
              */

             sql="UPDATE `member` SET `read`='" + new_read + "', `draw`='" + new_draw + "', `game`='" + new_game + "', `movie`='" + new_movie + "', `sport`='" + new_sport + "', `dance`='" + new_dance + "' , `travel`='" + new_travel + "', `shopping`='" + new_shopping + "' WHERE `Email` = '" + email + "'";
             con.createStatement().execute(sql);
             con.close();
             response.setHeader("Refresh","0;model/api_test.html");

           //  }
           }
           /* request.setRequestHeader('Content-Type', 'application/json');
           request.send(data);

       }*/
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