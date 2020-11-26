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
                    Cookie name = new Cookie("name",rs.getString("Name"));
<<<<<<< Updated upstream
=======
                    response.addCookie(name);
>>>>>>> Stashed changes
                  	session.setAttribute("name",rs.getString("Name"));
                  	session.setAttribute("gender",rs.getString("Gender"));
                  	session.setAttribute("birthday",rs.getString("Birthday"));
                  	session.setAttribute("email",rs.getString("Email"));
                    session.setAttribute("password",rs.getString("Password"));
                    out.println(name);
                    out.println("登入成功，3秒後頁面自動進行跳轉");
                    Cookie cookie = null;
                    Cookie[] cookies = null;
                    // Get an array of Cookies associated with this domain
                    cookies = request.getCookies();
                    if( cookies != null ){
                        out.println("<h2> Found Cookies Name and Value</h2>");
                        for (int i = 0; i < cookies.length; i++){
                          cookie = cookies[i];
                          out.print("Name : " + cookie.getName( ) + ",  ");
                          out.print("Value: " + cookie.getValue( )+" <br/>");
                        }
                    response.setHeader("Refresh","3;customer_survey.jsp");
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
      }
    catch (SQLException sExec) {
        out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>