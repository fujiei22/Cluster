<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>add</title>
</head>
<body>
<%
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
           String new_name=(String)(session.getAttribute("name"));
           String new_mail=(String)(session.getAttribute("email"));
           String new_subject=new String(request.getParameter("subject"));
           String new_content=new String(request.getParameter("content"));
           String new_category=request.getParameter("category");
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());

           sql="INSERT post (`PostName`, `Email`, `Subject`, `Content`, `Category`, `PostDate`) ";
           sql+="VALUE ('" + new_name + "', ";
           sql+="'"+new_mail+"', ";
           sql+="'"+new_subject+"', ";
           sql+="'"+new_content+"', "; 
           sql+="'"+new_category+"', ";  
           sql+="'"+new_date+"')";      

           con.createStatement().execute(sql);
           con.close();
           response.sendRedirect("homepage.jsp");
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