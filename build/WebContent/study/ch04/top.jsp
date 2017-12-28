<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.Timestamp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>top.jsp</title>
</head>
<body>
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
%>

top.jsp입니다.<p>
<%=now.toString() %>
<hr>

</body>
</html>