<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>값을 입력하는 폼</title>
</head>
<body>
<h2>숫자값을 입력하세요.</h2>

<%--get은 상태유지 가능, url로 정보가 드러남 --%>
<%--post는 상태유지 불가능, url로 정보가 드러나지 않음 --%>
<!-- HTML 주석 -->
<%-- JSP 주석 --%>
<% //Java 주석 %>
<form method = "post" action = "ifTestPro.jsp">
<input type = "text" name = "number">
<input type = "submit" value = "입력완료">
</form>
</body>
</html>