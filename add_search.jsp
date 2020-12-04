<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
 <% 
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else
           {
           String sql="USE `Cluster`";
           con.createStatement().execute(sql);
           String search= new String(request.getParameter("search"));
           
           sql = "SELECT * FROM `post` WHERE CONCAT(IFNULL(`Subject`,''),IFNULL(`Content`,''),IFNULL(`Category`,'')) LIKE '%"+search+"%'";
           ResultSet searchRs=con.createStatement().executeQuery(sql);
            
            if(searchRs.next()){
            String postRs=searchRs.getString(4)+searchRs.getString(5)+searchRs.getString(6);
            con.close();
            response.sendRedirect(postRs); 
         }
            else{
            out.println("<SCRIPT LANGUAGE='JavaScript'>");
            out.println("alert('查無資料')");
            out.println("history.back();");
            out.println("</SCRIPT>");
            con.close();
          }


          
//Step 6: 關閉連線
       con.close();
    }
  }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤");
}
        %>   