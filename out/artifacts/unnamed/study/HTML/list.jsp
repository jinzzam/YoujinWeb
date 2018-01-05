<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-05
  Time: 오후 5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Test</title>
</head>
<body>
<%
Connection conn = null;

try{
String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String dbId = "system";
String dbPass = "pass";

Class.forName("oracle.jdbc.driver.OracleDriver");
conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
out.println("제대로 연결되었습니다.<br>");
String sql ="select * from wap";
PreparedStatement pstmt = conn.prepareStatement(sql);

ResultSet rs = pstmt.executeQuery();
    out.println("<ol>");
    while(rs.next()) {
        out.println("<li>"+rs.getString("name") + " ");
        out.println(rs.getString("id") + " ");
        out.println(rs.getString("age") + "</li>");
    }
    out.println("</ol>");

}catch(Exception e){
    e.printStackTrace();
}
%>

<a href = "http://www.google.com" target="">
    google을 방문합시당</a>
<p>
    target속성이 "_blank"이므로,
    링크는 새로운 탭에서 열립니다.
</p>
</body>
</html>

