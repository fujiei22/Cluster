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
           java.sql.Date new_createtime=new java.sql.Date(System.currentTimeMillis());

           new_name=new_name.replace(" ","");
           new_mail=new_mail.replace(" ","");
           new_pwd=new_pwd.replace(" ","");

           out.println(new_name);

           if(new_mail != null && new_mail != "" && new_pwd != null && new_pwd != "")
                  {
                    sql = "SELECT * FROM `member` WHERE `Email`='" +new_mail+"'"; 
                    ResultSet rs =con.createStatement().executeQuery(sql);
                    if(rs.next())
                      {
                        out.println("<SCRIPT LANGUAGE='JavaScript'>");
                        out.println("alert('該Email已被註冊')");
                        out.println("history.back();");
                        out.println("</SCRIPT>");
                      }
                    else
                      {
                      sql="INSERT `member` (`Name`, `Gender` , `Birthday`, `Email`, `Password`, `Createtime`, `Signature`, `Introduction`)";
                      sql+="VALUE ('" +new_name+ "', ";
                      sql+="'"+new_gender+"', ";
                      sql+="'"+new_date+"', ";     
                      sql+="'"+new_mail+"', ";
                      sql+="'"+new_pwd+"', ";
                      sql+="'"+new_createtime+"', ";
                      sql+="'', ";
                      sql+="'')";
                      con.createStatement().execute(sql);

                      sql="INSERT `memberskin` (`Email`, `Skin`, `Eyes` , `Eyebrow`, `Mouth`, `Fronthair`, `Backhair`, `Clothes`, `Accessories`)";
                      sql+="VALUE ('" +new_mail+ "', ";
                      sql+="'1', ";
                      sql+="'1', ";
                      sql+="'4', ";     
                      sql+="'1', ";
                      sql+="'5', ";
                      sql+="'2', ";
                      sql+="'4', ";
                      sql+="'7')";
                      con.createStatement().execute(sql);
                      response.setHeader("Refresh","0;login.jsp");
                      }
                  }
            else
            {
              out.println("<SCRIPT LANGUAGE='JavaScript'>");
                        out.println("alert('請輸入帳號密碼')");
                        out.println("history.back();");
                        out.println("</SCRIPT>");
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
   out.println("class錯誤"+err.toString());
}
%>