<%--
  Created by IntelliJ IDEA.
  User: yanek
  Date: 22.08.2020
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Obsługa sesji</title>
</head>
<body>
<h2>Obsługa sesji</h2>
<%
    request.getSession().invalidate();
    HttpSession newSession = request.getSession(true);
    newSession.setAttribute("userId", 123456);

%>
<a href="session.jsp">session...</a>

</body>
</html>
