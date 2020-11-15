<%--
  Created by IntelliJ IDEA.
  User: 13602
  Date: 2020/10/30
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
登录成功
<br>
<%out.print(request.getAttribute("账号"));%>
<br>
<a href="board">板块</a>
</body>
</html>
