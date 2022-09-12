<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ilhan
  Date: 6.09.2022
  Time: 00:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hi, Welcome!</title>
</head>
<body>
<h2>Welcome to the home page :) </h2>
<hr>
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur deserunt dolore dolores eius eligendi <br>
eum expedita facilis harum natus, odio officia quaerat qui saepe sit veritatis. Modi omnis sapiente ut. <br>
Lorem ipsum dolor sit amet, consectetur adipisicing elit.
<br>
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="Logout">
</form:form>
</body>
</html>
