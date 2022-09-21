<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
<br>
User: <security:authentication property="principal.username"/>
Role(s): <security:authentication property="principal.authorities"/>
<br>
<security:authorize access="hasRole('MANAGER')">

    <!-- Add a link to point to /leaders ... this is for the managers -->

    <p>
        <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
        (Only for Manager peeps)
    </p>

</security:authorize>


<security:authorize access="hasRole('ADMIN')">

    <!-- Add a link to point to /systems ... this is for the admins -->

    <p>
        <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
        (Only for Admin peeps)
    </p>

</security:authorize>
<br>
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
