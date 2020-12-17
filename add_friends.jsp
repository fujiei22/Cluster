<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*, java.util.*"%>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else{ 
            sql="use `cluster`";
            con.createStatement().execute(sql);
            sql="INSERT `friends` (`Email`, `Friends`)";
            sql+="VALUE ('" +session.getAttribute("email")+ "', ";
            sql+="'"+request.getParameter("addEmail")+"')";
            con.createStatement().execute(sql);
            con.close();
            out.println("<SCRIPT LANGUAGE='JavaScript'>");
            out.println("alert('成功加為好友！')");
            out.println("</SCRIPT>");
            response.setHeader("Refresh","0;friends.jsp");  
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