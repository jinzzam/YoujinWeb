<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Table Test</title>
</head>
<body>
<table border="1">
    <caption>최근에 본 영화들</caption>
    <tr>
        <th>영화제목</th>
        <th>연도</th>
        <th>감독</th>
        <th>평가</th>
    </tr>
    <tr>
        <td>라이프 오브 파이</td>
        <td rowspan="2">2013</td>
        <td>이안</td>
        <td>8.68</td>
    </tr>
    <tr>
        <td>레미제라블</td>
        <td>톰후퍼</td>
        <td>8.28</td>
    </tr>
    <tr>
        <td>장고: 분노의 추적자</td>
        <td>2012</td>
        <td>타란티노</td>
        <td>8.29</td>
    </tr>
    <tr>
        <td colspan="4">blank</td>
    </tr>
</table>
</body>
</html>
