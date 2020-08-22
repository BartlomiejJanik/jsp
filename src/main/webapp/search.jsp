<%--
  Created by IntelliJ IDEA.
  User: yanek
  Date: 22.08.2020
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Obsługa ciasteczek</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        out.print("<h2>Found Cookies<h2/>");
        for (Cookie cookie : cookies) {
            out.println("Name: " + cookie.getName() + ", ");
            out.println("Value: " + cookie.getValue() + "<br/>");
        }
    }else{
        out.print("Not found any cookies");
    }
%>
</body>
</html>
