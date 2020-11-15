<%--
  Created by IntelliJ IDEA.
  User: 13602
  Date: 2020/10/30
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%String result=(String)request.getAttribute("result");
    if (result==null){
        result="";
    }
%>
<%=result%>
<form action="login" method="get">
    <p>账号: <input type="text" name="账号" /></p>
    <p>密码: <input type="password" name="密码" /></p>
    <input type="submit" value="Submit" />
</form>
</body>
</html>