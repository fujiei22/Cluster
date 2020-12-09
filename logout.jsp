<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<% 
session.removeAttribute("name");
session.removeAttribute("gender");
session.removeAttribute("birthday");
session.removeAttribute("email");
session.removeAttribute("password");
response.setHeader("Refresh","0;login.jsp");
%>