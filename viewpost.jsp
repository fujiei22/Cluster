<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>列出留言</title>
</head>
<body>
<a href="post.jsp">寫留言</a><p>
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
           sql="USE `cluster`";
           con.createStatement().execute(sql);
          //執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="SELECT * FROM `post`"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);

           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"筆留言<p>");
           
           //每頁顯示20筆, 算出共幾頁◄ ►
           int page_num=(int)Math.ceil((double)total_content/10.0); //無條件進位
           out.println("頁數");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
              out.print("<a href='viewpost.jsp?page="+i+"'>"+i+"</a>&nbsp;");
            out.println("<p>");

           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "0";          
           int current_page=Integer.valueOf(page_string);
           if(current_page==0) //若未指定page, 令current_page為1
	          current_page=1;
	         //計算開始記錄位置   
           //顯示結果 
           int start_record=(current_page-1)*10;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM `post` ORDER BY `pno` DESC LIMIT ";
           sql+=start_record+",10";

           rs=con.createStatement().executeQuery(sql);
           //逐筆顯示, 直到沒有資料(最多還是20筆)
           while(rs.next())
                {
                 out.println("主題:"+rs.getString(4)+"<br>");
                 out.println("姓名:"+rs.getString(2)+"<br>");
                 out.println("內容:"+rs.getString(5)+"<br>");
                 out.println("時間:"+rs.getString(6)+"<br><hr>");
          }

          out.println("頁數");
          for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
              out.print("<a href='viewpost.jsp?page="+i+"'>"+i+"</a>&nbsp;");
            out.println("<p>");
//Step 6: 關閉連線
          con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤");
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤");
}
%>
</body>
</html>
