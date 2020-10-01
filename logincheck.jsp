<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");   
    try{
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
          out.println("連線建立失敗");
        else
          { 
            con.createStatement().execute("USE `cluster`");
            String sql = "SELECT * FROM `member`" ;
            ResultSet tmp =  con.createStatement().executeQuery(sql);
            con.createStatement().execute(sql);
            if(request.getParameter("email") !=null && request.getParameter("password") != null)
              {
                sql = "SELECT * FROM `member` WHERE `Email`='" +request.getParameter("email")
                +"'AND `Password`='"+request.getParameter("password")+"'"; 
                ResultSet rs =con.createStatement().executeQuery(sql);
                if(rs.next())
                  {            
                    session.setAttribute("email",request.getParameter("email"));
                    out.println("登入成功");
                  }
                else
                  {
                      out.println("<SCRIPT LANGUAGE='JavaScript'>");
                      out.println("alert('帳號密碼錯誤，請再試一次！')");
                      out.println("window.document.location.href='login.jsp';");
                      out.println("</SCRIPT>");
                      //response.sendRedirect("login.jsp");
                  }
        con.close();
              }
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