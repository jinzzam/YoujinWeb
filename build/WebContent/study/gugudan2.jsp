<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 스크립트릿이라고 한다. -->
<%
for(int i=1;i<=9;i++){
	for(int j=1;j<=9;j++){%>
		<%= i%> * <%=j%>  = <%= i*j%><br>
	<%}
}

%>

</body>
</html>