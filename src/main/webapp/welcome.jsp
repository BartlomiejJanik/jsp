<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: yanek
  Date: 22.08.2020
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World!</title>
</head>
<body>
    <h1><% out.print("Hello world"); %></h1>
    <p>
        Dzisiaj jest <% String time = LocalDateTime.now().toString();
        out.print(time); %>
    </p>
</body>
</html>
