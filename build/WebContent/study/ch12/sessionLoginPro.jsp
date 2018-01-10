<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-10
  Time: 오후 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");

    LogonDBBean logon = LogonDBBean.getInstance();
    int check = logon.userCheck(id, passwd);
%>
</body>
</html>
