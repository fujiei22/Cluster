<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
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
        sql="use `cluster`";
        con.createStatement().execute(sql);
        String new_mail=(String)(session.getAttribute("email"));
        String new_skin=request.getParameter("skin");
        String new_eyes=request.getParameter("eyes");
        String new_eyebrow=request.getParameter("eyebrow");
        String new_mouth=request.getParameter("mouth");
        String new_fronthair=request.getParameter("fronthair");
        String new_backhair=request.getParameter("backhair");
        String new_clothes=request.getParameter("clothes");
        String new_accessories=request.getParameter("accessories");

        sql="UPDATE `memberskin` SET `Skin`='"+new_skin+"',";
        sql+="`Eyes`='"+new_eyes+"',";
        sql+="`Eyebrow`='"+new_eyebrow+"',";
        sql+="`Mouth`='"+new_mouth+"',";
        sql+="`Fronthair`='"+new_fronthair+"',";
        sql+="`Backhair`='"+new_backhair+"',";
        sql+="`Clothes`='"+new_clothes+"',";
        sql+="`Accessories`='"+new_accessories+"'";
        sql+="WHERE `Email`='"+new_mail+"'";

        con.createStatement().execute(sql);
        con.close();
        out.println("<SCRIPT LANGUAGE='JavaScript'>");
        out.println("window.document.location.href='homepage.jsp';");
        out.println("</SCRIPT>");
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