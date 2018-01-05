<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-05
  Time: 오후 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Links</title>
</head>
<body>
    <a href="http://www.google.com" target="_parent">      <%--부모 프레임에 새로운 페이지를 적재한다는게 뭐지--%>
        구글 방문?
    </a>
    <br>
    <a href="http://www.naver.com" target="_top">       <%--현재 윈도우에 새로운 페이지를 적재하고 모든 프레임을 취소한다는게 뭘까--%>
        네이버 방문?
    </a>

</body>
</html>
