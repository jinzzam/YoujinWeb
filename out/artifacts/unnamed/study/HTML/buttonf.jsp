<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 1:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Button</title>
</head>
<body>
<form name="input" action="getid.jsp" method="get">
    물품 가격 :
    <input type="text" name="user"><br>
    수량 :
    <input type="text" name="count"><br>
    <script>
        function getResult() {
            var user = document.getElementsByName("user")[0].value;
            var count = document.getElementsByName("count")[0].value;
            console.log(user);
            console.log(count);
            var result = user * count;
            alert(result + '원 입니다.')
        }
    </script>
    <input type="button" value="계산" onclick="getResult()">
</form>
</body>
</html>
