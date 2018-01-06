<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 5:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>세션 속성 설정 및 사용</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");

    session.setAttribute("id", id);
    session.setAttribute("passwd", passwd);
%>
id와 passwd 세션 속성을 설정하였습니다.<br>

id 속성의 값은
<%=(String)session.getAttribute("id")%>이고 <br>
passwd 속성의 값은
<%=(String)session.getAttribute("passwd")%>입니다.

</body>
</html>
