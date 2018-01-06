<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 3:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    이메일 : <input type="email" name="email" required><br>
    신발 사이즈 <input type="number" min="220" max="290" step="10" value="260" name="shoesize"><br>
    테니스스킬 <input type="range" name="skill" min="1" max="10" value="5"><br>
    생일 <input type="date"><br>
    색상선택 : <input type="color">
    <input type="submit" value="전송">

</form>

</body>
</html>
