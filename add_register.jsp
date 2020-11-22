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

           new_name=new_name.replace(" ","");
           new_mail=new_mail.replace(" ","");
           new_pwd=new_pwd.replace(" ","");

           out.println(new_mail);

           if(new_mail != null && new_mail != "" && new_pwd != null && new_pwd != "")
                  {
                    sql = "SELECT * FROM `member` WHERE `Email`='" +new_mail+"'"; 
                    ResultSet rs =con.createStatement().executeQuery(sql);
                    if(rs.next())
                      {
                        out.println("該Email已被註冊");
                        response.setHeader("Refresh","3;register.jsp");
                      }
                    else
                      {
                      sql="INSERT `member` (`Name`, `Gender` , `Birthday`, `Email`, `Password`)";
                      sql+="VALUE ('" +new_name+ "', ";
                      sql+="'"+new_gender+"', ";
                      sql+="'"+new_date+"', ";     
                      sql+="'"+new_mail+"', ";
                      sql+="'"+new_pwd+"')";
                      con.createStatement().execute(sql);
                      out.println("註冊成功，3秒後頁面自動進行跳轉");
                      response.setHeader("Refresh","3;login.jsp");
                      }
                  }
            else
            {
              out.println("請輸入帳號密碼");
              //response.setHeader("Refresh","3;register.jsp");
            } 

            /*else
            {
              out.println("請輸入帳號密碼");
              response.setHeader("Refresh","3;register.jsp");
            }*/
           
//Step 4: 執行 SQL 指令	
/*
          sql="INSERT `member` (`Name`, `Gender` , `Birthday`, `Email`, `Password`)";
           sql+="VALUE ('" +new_name+ "', ";
           sql+="'"+new_gender+"', ";
           sql+="'"+new_date+"', ";     
           sql+="'"+new_mail+"', ";
           sql+="'"+new_pwd+"')";      
           con.createStatement().execute(sql); 
           */

//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
      
      
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