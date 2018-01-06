<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>getid</title>
</head>
<body>
<%
    String user = request.getParameter("user");
    String count = request.getParameter("count");

    int cost = Integer.parseInt(user);
    int cn = Integer.parseInt(count);
    int result = cost*cn;
%>
</body>
</html>
