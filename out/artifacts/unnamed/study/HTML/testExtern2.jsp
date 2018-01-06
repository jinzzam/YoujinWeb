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
<%--로그인 성공!<br>--%>

<%
    String email = request.getParameter("email2");
    String pass = request.getParameter("pass2");
/*    out.println(email);
    out.println(session.getAttribute("email2"));*/
%>
<%
    if (email != null) {
        if (session.getAttribute("email2") != null) {
            %>
        <form action="deleteSession.jsp">
    <button type="submit" value="세션삭제">세션삭제</button><br>
</form>
<%
    } else {
        session.setAttribute("email2", email);
        %>
        <form action="deleteSession.jsp">
    <button type="submit" value="세션삭제">세션삭제</button><br>
</form>
<%
    }%>
    이메일은 <%=session.getAttribute("email2")%>입니다.
<%} else {
    if (session.getAttribute("email2") != null) {
%>
<form action="deleteSession.jsp">
    <button type="submit" value="세션삭제">세션삭제</button><br>
</form>
이메일은 <%=session.getAttribute("email2")%>입니다.
<%
} else {
%>

로그인이 되지 않았습니다.<br>
<%
        }
    }
%>

<%
    Connection conn = null;

    try {
        String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
        String dbId = "system";
        String dbPass = "pass";

        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        out.println("제대로 연결되었습니다.<br>");

        String sql = "select * from wap where EMAIL = ? and PASSWORD = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        pstmt.setString(2, pass);

        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            out.println("hi");
            out.println(rs.getString("firstName") + "<br>");
            out.println(rs.getString("lastName") + "<br>");
            out.println(rs.getString("email") + "<br>");
            out.println(rs.getString("password") + "<br>");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>
