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
            int read_num =  Integer.parseInt(request.getParameter("read"));
            int draw_num =  Integer.parseInt(request.getParameter("draw"));
            int game_num =  Integer.parseInt(request.getParameter("game"));
            int movie_num =  Integer.parseInt(request.getParameter("movie"));
            int sport_num =  Integer.parseInt(request.getParameter("sport"));
            int dance_num =  Integer.parseInt(request.getParameter("dance"));
            int travel_num =  Integer.parseInt(request.getParameter("travel"));
            int shopping_num =  Integer.parseInt(request.getParameter("shopping"));

            int c0 = read_num + draw_num;
            int c1 = game_num + movie_num;
            int c2 = sport_num + dance_num;
            int c3 = travel_num + shopping_num;
            int max = 0;
            String Smax = "";

            max = c0;
            Smax = String.valueOf(0);
            if(max < c1)
            {
               max = c1;
               Smax = String.valueOf(1);
            }
            if(max < c2)
            {
               max = c2;
               Smax = String.valueOf(2);
            }
            if(max < c3)
            {
               max = c3;
               Smax = String.valueOf(3);
            }
            out.println(Smax);
           
            Cookie read_cookie = new Cookie("read", request.getParameter("read"));
            Cookie draw_cookie = new Cookie("draw", request.getParameter("draw"));
            Cookie game_cookie = new Cookie("game", request.getParameter("game"));
            Cookie movie_cookie = new Cookie("movie", request.getParameter("movie"));
            Cookie sport_cookie = new Cookie("sport", request.getParameter("sport"));
            Cookie dance_cookie = new Cookie("dance", request.getParameter("dance"));
            Cookie travel_cookie = new Cookie("travel", request.getParameter("travel"));
            Cookie shopping_cookie = new Cookie("shopping", request.getParameter("shopping"));

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

             sql="UPDATE `member` SET `read`='" + new_read + "', `draw`='" + new_draw + "', `game`='" + new_game + "', `movie`='" + new_movie + "', `sport`='" + new_sport + "', `dance`='" + new_dance + "' , `travel`='" + new_travel + "', `shopping`='" + new_shopping + "', `class`='" + Smax + "' WHERE `Email` = '" + email + "'";
             con.createStatement().execute(sql);
             con.close();

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