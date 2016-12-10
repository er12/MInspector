<%--
  Created by IntelliJ IDEA.
  User: ernesto
  Date: 21/11/16
  Time: 01:25 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<ul>
    <g:each var="header" in="${res}">
        <li>
            ${header}
        </li>

    </g:each>
</ul>
<br/>
<ul>
    <g:each var="header" in="${res2}">
        <li>
            ${header}
        </li>

    </g:each>
</ul>

</body>
</html>