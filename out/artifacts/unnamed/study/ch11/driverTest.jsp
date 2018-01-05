<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2017-12-30
  Time: 오후 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="kr">
<head>
    <title>Title</title>
</head>
<body>
<h2>JDBC 드라이버 테스트</h2>

<%
Connection conn = null;

try{
    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
    String dbId = "system";
    String dbPass = "pass";

    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
    out.println("제대로 연결되었습니다.<br>");
    String sql ="select * from member";
    PreparedStatement pstmt = conn.prepareStatement(sql);

    ResultSet rs = pstmt.executeQuery();
    while(rs.next()){
        out.println(rs.getString("name")+" ");
        out.println(rs.getDate("birthday")+" ");
        out.println(rs.getString("gender")+" ");
        out.println(rs.getString("id")+" ");
        out.println(rs.getString("password")+" ");
        out.println(rs.getString("yourword")+"<br>");

    }
}catch(Exception e){
    e.printStackTrace();
}
%>
</body>
</html>
