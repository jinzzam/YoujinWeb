<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-10
  Time: 오후 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>
<h2>로그인 폼</h2>

<form method="post" action="sessionLoginPro.jsp">
    아이디 : <input type="text" name="id" maxlength="50"><br>
    패스워드 : <input type="password" name="passwd" maxlength="16"><br>
    <input type="submit" value="로그인">
    <input type="button" value="회원가입" onclick="location.href='insertMemberForm.jsp'">
</form>
</body>
</html>
