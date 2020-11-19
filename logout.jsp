<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<% 
session.removeAttribute("name");
session.removeAttribute("gender");
session.removeAttribute("birthday");
session.removeAttribute("email");
session.removeAttribute("password");
out.println("登出成功，3秒後頁面自動進行跳轉");
response.setHeader("Refresh","3;login.jsp");
%>