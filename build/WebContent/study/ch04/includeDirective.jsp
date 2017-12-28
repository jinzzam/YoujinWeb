<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>include 디렉티브 연습</title>
</head>
<body>
<h2>include 디렉티브 연습</h2>
<% String name = "KIM"; %>
<%@ include file = "top.jsp" %>
포함하는 페이지 includeDirective.jsp의 내용입니다.
<%@ include file = "bottom.jsp" %>
</body>
</html>