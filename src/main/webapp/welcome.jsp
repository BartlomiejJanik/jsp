<%--
  Created by IntelliJ IDEA.
  User: yanek
  Date: 22.08.2020
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="calculator" class="pl.sda.Calculator"/>
<jsp:setProperty name="calculator" property="n" value="5"/>
<html>
<head>
    <title>Obsługa ciasteczek</title>
</head>
<body>
<h2>Obsługa Cookie</h2>
<%
    Cookie cookie = new Cookie("searchId", String.valueOf(123456));
    cookie.setMaxAge(60 * 60 * 24);
    response.addCookie(cookie);
%>

</body>
</html>
