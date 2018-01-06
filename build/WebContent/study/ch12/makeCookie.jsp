<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 5:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>
<%
    String cookieName = "id";
    Cookie cookie = new Cookie(cookieName, "youjin");
    cookie.setMaxAge(60*2);
    response.addCookie(cookie);
%>

<h2>쿠키를 생성하는 페이지</h2>
"<%=cookieName%>" 쿠키가 생성되었습니다.<br>
<form method="post" action="useCookie.jsp">
    <input type="submit" value="생성된 쿠키 확인">
</form>

</body>
</html>
