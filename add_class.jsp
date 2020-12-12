<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, javax.servlet.*, java.net.*"%>
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
          String class_cookie = "class";
          Cookie cookies[] = request.getCookies();
          Cookie classV = null;

          if(cookies != null)
          {
            for(int i = 0; i < cookies.length; i++)
            {
              if(cookies[i].getName().equals(class_cookie))
              {
                classV = cookies[i];
                break;
              }
            }
          }
          sql="UPDATE `member` SET `class` = '"+classV.getValue()+"' WHERE `Email`='"+session.getAttribute("email")+"'";
          con.createStatement().execute(sql);
          response.setHeader("Refresh","0;public/index.html");

//Step 6: 關閉連線
           con.close();   
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