<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>웹 브라우저에 저장된 쿠키를 가져오기</title>
</head>
<body>
<h2>웹 브라우저에 저장된 쿠키를 가져오는 페이지</h2>
<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {

        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("id")) {
%>
쿠키의 이름은 "<%=cookies[i].getName()%>"이고
쿠키의 값은 "<%=cookies[i].getValue()%>"입니다.
<%
            }
        }
    }

%>
</body>
</html>
