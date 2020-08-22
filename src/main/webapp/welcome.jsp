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
    <title>Search</title>
</head>
<body>
    <form action="search.jsp" method="post">
        <label>Szukane słowo:<input type="text" name="query"></label><br/>
        <label>Strona nr:<input type="text" name="page"></label><br/>
        <label>Sortowanie
            <select name="sort">
                <option value="asc">rosnąco</option>
                <option value="desc">malejąco</option>
            </select>
        </label><br/>
        <input type="submit" value="Wyślij"/>
    </form>
<a href="http://localhost:8080/search.jsp?query=JAVAzLinku&page=56&sort=asc"> link <a/>
</body>
</html>
