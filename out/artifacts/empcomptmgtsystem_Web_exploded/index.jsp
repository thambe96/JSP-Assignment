<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/16/2025
  Time: 8:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>empcompmgtsystem</title>
</head>
<body>
    <h1>Home page</h1>
   <%--

       <a href="views/employeeregister.jsp" target="_blank">
            <button>Login</button>
        </a>

    --%>

    <form action="loadPage" method="get">
        <input type="submit" name="rolepage" value="Employee Login" />
    </form>

    <form action="loadPage" method="get">
        <input type="submit" name="rolepage" value="Admin Login">
    </form>




</body>
</html>
