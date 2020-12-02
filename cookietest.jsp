<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>話題</title>
    <!-- bootstrap required-->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="css/header.css" rel="stylesheet" media="screen">

    
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
           sql="USE `cluster`";
           con.createStatement().execute(sql);
          //執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet  
           sql="SELECT * FROM `post`"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);

           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           //out.println("共"+total_content+"筆留言<p>");
           
           //每頁顯示10筆, 算出共幾頁◄ ►
           int page_num=(int)Math.ceil((double)total_content/10.0); //無條件進位
           //out.println("頁數");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
         //  for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
          //   out.print("<a href='viewpost.jsp?page="+i+"'>"+i+"</a>&nbsp;");
          //  out.println("<p>");

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

              while(rs.next())
                  {
                    String set =rs.getString(1);
                    out.println("<a href='#' onclick='setcookie("+set+")'>");
                    out.println("<div class='row' >");
                    out.println("<img src='img/test.jpg' style='width:10%;margin:10px;'>");
                    out.println("<div class='maindiv'>");
                    out.println("<span class=''>"+rs.getString(4)+"</span>");
                    out.println("<p class=''>"+rs.getString(5)+"</span>");
                    out.println("<span class='badge badge-primary'>"+rs.getString(6)+"</span>");
                    out.println("</div>");
                    out.println("<div class='percent'><h2>80%</h2></div>");
                    out.println("</div>");
                    out.println("</a>");
                  }
             
                  %> 

                  <script>
                    function setcookie(set) { 
                      document.cookie = "room=" + set + ";" + ";path=/";
                      window.location.href="http://localhost:3000/"
                    }
                  
                  </script>
                  
                 
                <%
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



  <script>
    function openForm() {
      document.getElementById("myForm").style.display = "block";
    }
    
    function closeForm() {
      document.getElementById("myForm").style.display = "none";
    }
    </script>

</body>
</html>