<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<html>

<head>
	<title>Custom Login Page</title>
	
	<style>
		.failed {
			color: red;
		}
		.success{
			color: green;
		}
	</style>
	
</head>

<body>

<h3>My Custom Login Page</h3>

	<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
			   method="POST">
	
		<!-- Check for login error -->
	
		<c:if test="${param.error != null}">
		
			<i class="failed">Sorry! You entered invalid username/password.</i>
			
		</c:if>

		<!-- Check for logout -->

		<c:if test="${param.logout != null}">

			<div class="success">You have succesfully logged out.</div>

		</c:if>
			
		<p>
			User name: <input type="text" name="username" />
		</p>

		<p>
			Password: <input type="password" name="password" />
		</p>
		
		<input type="submit" value="Login" />

		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf_token}" />
		
	</form:form>

</body>

</html>












