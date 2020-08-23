<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: yanek
  Date: 23.08.2020
  Time: 09:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Obsługa sesji</title>
</head>
<body>
<%--<%
    Date creationTime new Date(session.getCreationTime());
%>--%>
<%
    Integer userID = (Integer) session.getAttribute("userId");
    Date creationTime = new Date(session.getCreationTime());
    Date lastAccessTime = new Date(session.getLastAccessedTime());
%>
<a href="welcome.jsp"> welcome...</a>
<table>
    <tr>
        <th>Session info</th>
        <th>Values</th>
    </tr>
    <tr>
        <td>Sesion id</td>
        <td><% out.print(session.getId());%></td>
    </tr>
    <tr>
        <td>userId</td>
        <td><% out.print(userID);%></td>
    </tr>
    <tr>
        <td>Creation time</td>
        <td><% out.print(creationTime);%></td>
    </tr>
    <tr>
        <td>Last access time</td>
        <td><% out.print(lastAccessTime);%></td>
    </tr>

</table>
</body>
</html>
