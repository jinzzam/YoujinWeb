<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output</title>
</head>
<body>
<h2>입력한 숫자만큼 반복수행</h2>
<table border="1">

<tr>
<td><b>글번호</b></td>
<td><b>글제목</b></td>
<td><b>글내용</b></td>
</tr>

<%
int number = Integer.parseInt(request.getParameter("num"));


for(int i=number;i>=1;i--){%>
	
<tr>
<td><b><%=i%></b></td>
<td><b>제목 <%=i %></b></td>
<td><b>내용 <%=i %></b></td>
</tr>	
	
<%}

%>


</table>
</body>
</html>