<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-05
  Time: 오후 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
</head>
<body>
로그인 성공!<br>
<%
//    String firstname = request.getParameter("firstName");
//    String lastname = request.getParameter("lastName");
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
%>

<%--<%=firstname%><br>--%>
<%--<%=lastname%><br>--%>
<%=email%><br>
<%=pass%><br>



</body>
</html>
