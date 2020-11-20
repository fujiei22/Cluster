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
           String new_name=new String(session.getAttribute("name").getBytes("ISO-8859-1"),"UTF-8");
           String new_mail=new String(session.getAttribute("email"));
           String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"UTF-8");
           String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
           String new_category=new String(request.getParameter("category").getBytes("ISO-8859-1"),"UTF-8");
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
           response.sendRedirect("viewpost.jsp?page=1");
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