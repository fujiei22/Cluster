<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
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
           %>
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

     <style>

    body,html {height:100%;}
      .leftnav{
        background-color: rgb(141, 141, 141);
        height: 100%;
      } 
    a{
      color:black;
    }
      .mainarea{
        background-color: white;
      }
      .chatdiv{
        background-color: rgb(141, 174, 211);
        padding:15px;
        margin:15px;
        border-radius: 10%;
      }
      .mainboard{
        margin:30px;
      }
      #myTabContent{
        padding:30px;
        border-radius:15px;
        background-color: rgb(188, 228, 238);
        height:85%;
      }
      .maindiv{
        background-color:white;
        padding:5px;
        margin-top:10px;
        border-radius: 10px;
      }
     </style>
</head>

<body>
  <div class="container-fluid" style="height: 100%;">
    <div class="row justify-content-center" style="height: 100%;">
      <!--第一區-->
      <div class="col leftnav">
        <ul class="nav flex-column" style="height: 100%">
          <li class="nav-item" style="height: 17%"></li>
          <li class="nav-item" style="height: 15%">
            <a class="nav-link active" href="member.jsp">User name</a>
          </li>
          <li class="nav-item" style="height: 10%">
            <a class="nav-link active" href="homepage.jsp">話題</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">通知</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">好友</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="#">聊天</a>
          </li>
          <li class="nav-item"style="height: 10%">
            <a class="nav-link" href="logout.jsp">登出</a>
          </li>
          <li class="nav-item" style="height: 17%"></li>
        </ul>
      </div>

      <!--第二區-->
      <div class="col-8 mainarea">
        <div class="mainboard" style="height:80%">
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        <h2>話題</h2>
        
          <ul class="nav justify-content-end" id="myTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" id="home-tab" data-toggle="tab" href="#guess" role="tab" aria-controls="guess" aria-selected="true">猜你喜歡</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="profile-tab" data-toggle="tab" href="#hot" role="tab" aria-controls="hot" aria-selected="false">熱門話題</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="contact-tab" data-toggle="tab" href="#new" role="tab" aria-controls="new" aria-selected="false">最新話題</a>
            </li>
          </ul>
       
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="guess" role="tabpanel" aria-labelledby="home-tab">
            <%
            while(rs.next())
                {
                  out.println("<div class='maindiv'>");
                  out.println("<span class=''>"+rs.getString(4)+"</span>");
                  out.println("<p class=''>"+rs.getString(5)+"</span>");
                  out.println("</div>");
                }
            %>


              <div class="maindiv">
                <span class="">話題標題</span>
                <p class="">話題內容話題內容</span>
              </div>
            
              <div class="maindiv">
                <span class="">話題標題</span>
                <p class="">話題內容話題內容</span>
              </div>

              <div class="maindiv">
                <span class="">話題標題</span>
                <p class="">話題內容話題內容</span>
              </div>

            </div>

            <div class="tab-pane fade" id="hot" role="tabpanel" aria-labelledby="profile-tab">

              <div class="maindiv">
                <span class="">話題標題</span>
                <p class="">話題內容話題內容</span>
              </div>

              <div class="maindiv">
                <span class="">話題標題</span>
                <p class="">話題內容話題內容</span>
              </div>
              
            </div>
            <div class="tab-pane fade" id="new" role="tabpanel" aria-labelledby="contact-tab">
              <div class="maindiv">
                <span class="">話題標題</span>
                <p class="">話題內容話題內容</span>
              </div>
              <div class="maindiv">
                <span class="">話題標題</span>
                <p class="">話題內容話題內容</span>
              </div>
            </div>
          </div>
        </div>

      </div>

      <!--第三區-->
      <div class="col mainarea">
        
        <div class="row">
          <div class="chatdiv">
            <span class="">話題標題</span>
            <p class="">話題內容話題內容</span>
          </div>
        </div>
        <div class="row">
          <div class="chatdiv">
            <span class="">話題標題</span>
            <p class="">話題內容話題內容</span>
          </div>
        </div>
        <div class="row">
          <div class="chatdiv">
            <span class="">話題標題</span>
            <p class="">話題內容話題內容</span>
          </div>
        </div>
        <div class="row">
          <a href="newtopic.jsp"><h2>+</h2></a>
        </div>
      </div>

      </div>
    </div>
  </div>

<%--
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
           //逐筆顯示, 直到沒有資料(最多還是10筆)
           while(rs.next())
                {
                  out.println("<div class='row'>");
                  out.println("<div class='chatdiv'>");
                  out.println("<span class=''>"+rs.getString(4)+"</span>");
                  out.println("<p class=''>"+rs.getString(5)+"</span>");
                  out.println("</div>");

                 
                 out.println("主題:"+rs.getString(4)+"<br>");
                 out.println("內容:"+rs.getString(5)+"<br>");
                 out.println("時間:"+rs.getString(6)+"<br><hr>");
          }
          --%>
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

</body>
</html>
