<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
 <% 
try{
   Class.forName("com.mysql.jdbc.Driver");
   try{
      String url="jdbc:mysql://localhost/?serverTimezone=UTC";
      Connection con=DriverManager.getConnection(url,"root","1234");
      if(con.isClosed()){
         out.println("連線建立失敗");
      }
      else
      {
         String sql="USE `Cluster`";
         con.createStatement().execute(sql);
         String search = request.getParameter("search");
         
         sql = "SELECT * FROM `post` WHERE CONCAT(IFNULL(`Subject`,''),IFNULL(`Content`,'')) LIKE '%"+search+"%'";
         ResultSet searchRs=con.createStatement().executeQuery(sql);
         boolean flag = true;
         while(searchRs.next()){
            flag = false;
            String SubjectRs=searchRs.getString(4);
            String ContentRs=searchRs.getString(5);
            String CategoryRs=searchRs.getString(6);
            out.println("主題：" + SubjectRs);
            out.println("<br>");
            out.println("內容：" + ContentRs);
            out.println("<br>");
            out.println("分類：" + CategoryRs);
            out.println("<br>");
            out.println("--------------------------------------------------------------------------------");
         }
         if(flag){
            out.println("<SCRIPT LANGUAGE='JavaScript'>");
            out.println("alert('查無資料')");
            out.println("history.back();");
            out.println("</SCRIPT>");
            con.close();
         }
       con.close();
      }
   }
   catch (SQLException sExec){
      out.println("SQL錯誤"+sExec.toString());
   }
}
catch (ClassNotFoundException err){
   out.println("class錯誤");
}
        %>   