<%--
  Created by IntelliJ IDEA.
  User: jin
  Date: 2018-01-06
  Time: 오후 4:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>css</title>
    <style>
        /*css 코드를 설명하기 위한 주석 다는 방법이다.*/
        h1 {
            text-align: center;
        }

        h3.type {
            background-color: yellow;
            border: 2px solid red;
        }

        body em {
            color: red;
        }

        body > h3 {
            color: blue;
        }

        a:link {
            color: blue;
        }

        /*아직 방문되지 않은 링크의 색상*/
        a:visited {
            color: green;
        }

        /*방문된 링크의 색상*/
        a:hover {
            color: green;
        }

        /*사용자가 링크 위에 있을 때*/
    </style>
</head>
<body>
<h1 id="special">This is a heading.</h1><br>
<h1 id="wewer" class="type">This is a heading too.</h1><br>
<h3 id="asdf" class="type">asjf<em>sfasdgqer</em>oijofjkjdflaf</h3><br>
<a href="http://www.gsdfjs.com">구글링크입니다.</a><br>
</body>
</html>
