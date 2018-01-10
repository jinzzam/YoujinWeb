<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-10
  Time: 오후 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = "";
    try{
        id = (String) session.getAttribute("id");
        if(id==null || id.equals(""))
            response.sendRedirect("sessionLoginForm.jsp");
        else{
%>

<html>
<head>
    <title>세션을 사용한 간단한 회원인증</title>
</head>
<body>
<b><%=id%></b>님이 로그인 하셨습니다.
<form method="post" action="sessionLogout.jsp">
    <input type="submit" value="로그아웃">
</form>
</body>
</html>


<%
        }
    } catch(Exception e){
        e.printStackTrace();
    }
%>