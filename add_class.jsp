//我隨便複製一個後端檔案，這個jsp的功能就只有讀取名為"class"的cookie並把結果存到會員資料的class欄位，並自動跳轉至public/index.html
//可以再多加一個把剛剛add_customer_survey寫的那些cookie刪掉的功能，因為分群計算完就不需要那些資料了(可做可不做，沒做只是cookie會很多而已）
<%@page import = "java.net.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*, java.util.*"%>
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
          Cookie cookies[] = null;
          cookies = request.getCookie();
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
          sql="INSERT `member` (`class`)";
          sql+="VALUE ('" +classV+ "') ";
          con.createStatement().execute(sql);
          response.setHeader("Refresh","0;keyword.jsp");

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