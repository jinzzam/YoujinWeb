<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-04
  Time: 오전 3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Update Test</h2>

<%
    Connection conn = null;

    try{
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        String dbId = "system";
        String dbPass = "pass";

        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        out.println("제대로 연결되었습니다.<br>");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String yourword = request.getParameter("yourword");
        String id = request.getParameter("id");
        String sql = "update member set name = ?, password = ?, yourword = ? where id = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, password);
        pstmt.setString(3, yourword);
        pstmt.setString(4, id);
        pstmt.executeUpdate();
        pstmt.close();

    } catch(Exception e){
        e.printStackTrace();
    }

    response.sendRedirect("driverTest.jsp");
%>
</body>
</html>
