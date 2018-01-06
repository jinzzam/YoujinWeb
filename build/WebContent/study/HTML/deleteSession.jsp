<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 6:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Session</title>
</head>
<body>
<%
    if(session.getAttribute("email2")!=null) {
        session.removeAttribute("email2");
        session.removeAttribute("pass2");
    } else{

    }

    response.sendRedirect("testExtern2.jsp");
%>

</body>
</html>
