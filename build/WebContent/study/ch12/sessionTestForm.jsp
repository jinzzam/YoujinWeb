<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 5:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session</title>
</head>
<body>
<h2>정보 입력 폼</h2>

<form method="post" action="sessionTestPro.jsp">
    아이디 : <input type="text" name="id" maxlength="50"><br>
    패스워드 : <input type="password" name="passwd" maxlength="16"><br>
    <input type="submit" value="정보 입력">

</form>
</body>
</html>
