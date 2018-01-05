<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-05
  Time: 오후 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
</head>
<body>
로그인 성공!<br>

<%
    String email = request.getParameter("email2");
    String pass = request.getParameter("pass2");
%>
<%
    Connection conn = null;

    try{
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        String dbId = "system";
        String dbPass = "pass";

        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        out.println("제대로 연결되었습니다.<br>");

        String sql ="select * from wap where EMAIL = ? and PASSWORD = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        pstmt.setString(2, pass);

        ResultSet rs = pstmt.executeQuery();
        while(rs.next()) {
            out.println(rs.getString("firstName") + "<br>");
            out.println(rs.getString("lastName") + "<br>");
            out.println(rs.getString("email") + "<br>");
            out.println(rs.getString("pass") + "<br>");
            out.println("hi");
        }
    } catch (Exception e){
        e.printStackTrace();
    }
%>


</body>
</html>
