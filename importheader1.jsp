<body>
<%
                String new_mail=(String)(session.getAttribute("email"));
                con.createStatement().execute("USE `cluster`");
                String sql1 = "SELECT * FROM `memberskin` WHERE `Email`='"+new_mail+"'";
                ResultSet rs1 =  con.createStatement().executeQuery(sql1);
                con.createStatement().execute(sql1);
                while(rs1.next())
                {
                    out.println("<img src='img/header/skin/skin"+rs1.getString(2)+".png' id='skin'>");
                    out.println("<img src='img/header/eyes/eyes"+rs1.getString(3)+".png' id='eyes'>");
                    out.println("<img src='img/header/eyebrow/eyebrow"+rs1.getString(4)+".png' id='eyebrow'>");
                    out.println("<img src='img/header/mouth/mouth"+rs1.getString(5)+".png' id='mouth'>");
                    out.println("<img src='img/header/fronthair/fronthair"+rs1.getString(6)+".png' id='fronthair'>");
                    out.println("<img src='img/header/backhair/backhair"+rs1.getString(7)+".png' id='backhair'>");
                    out.println("<img src='img/header/clothes/clothes"+rs1.getString(8)+".png' id='clothes'>");
                    out.println("<img src='img/header/accessories/accessories"+rs1.getString(9)+".png' id='accessories'>");
                }
                con.close();
%>
</body>