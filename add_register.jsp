<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use `cluster`";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
           String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
           String new_gender=request.getParameter("gender");
           String new_date=request.getParameter("birthday");
           String new_mail=request.getParameter("email");
           String new_pwd=new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
           
           
//Step 4: 執行 SQL 指令	

          sql="INSERT `member` (`Name`, `Gender` , `Birthday`, `Email`, `Password`)";
           sql+="VALUE ('" +new_name+ "', ";
           sql+="'"+new_gender+"', ";
           sql+="'"+new_date+"', ";     
           sql+="'"+new_mail+"', ";
           sql+="'"+new_pwd+"')";      

           con.createStatement().execute(sql); 

//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
          response.sendRedirect("login.jsp");
      
      
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