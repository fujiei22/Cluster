<body>
<%

    try{
            Class.forName("com.mysql.jdbc.Driver");   
            try{
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");
                if(con.isClosed())
                out.println("連線建立失敗");
                else
                { 
                    String new_mail=(String)(session.getAttribute("email"));
                    con.createStatement().execute("USE `cluster`");
                    String sql = "SELECT * FROM `memberskin` WHERE `Email`='"+new_mail+"'";
                    ResultSet rs =  con.createStatement().executeQuery(sql);
                    con.createStatement().execute(sql);
                    while(rs.next())
                    {
                        out.println("<img src='img/header/skin/skin"+rs.getString(2)+".png' id='skin'>");
                        out.println("<img src='img/header/eyes/eyes"+rs.getString(3)+".png' id='eyes'>");
                        out.println("<img src='img/header/eyebrow/eyebrow"+rs.getString(4)+".png' id='eyebrow'>");
                        out.println("<img src='img/header/mouth/mouth"+rs.getString(5)+".png' id='mouth'>");
                        out.println("<img src='img/header/fronthair/fronthair"+rs.getString(6)+".png' id='fronthair'>");
                        out.println("<img src='img/header/backhair/backhair"+rs.getString(7)+".png' id='backhair'>");
                        out.println("<img src='img/header/clothes/clothes"+rs.getString(8)+".png' id='clothes'>");
                        out.println("<img src='img/header/accessories/accessories"+rs.getString(9)+".png' id='accessories'>");
                    }
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
</body>