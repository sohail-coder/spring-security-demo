<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Company.com</title>
</head>
<body>
    <h2>Welcome to home page</h2>
    <p>
        User: <security:authentication property="principal.username" />
        <br></br>
        Role: <security:authentication property="principal.authorities" />
    </p>
    <security:authorize access="hasRole('MANAGER')" >
    <hr>
        <a href="${pageContext.request.contextPath}/leaders"> Leaders page </a>
    </hr>
    </security:authorize>
      <security:authorize access="hasRole('ADMIN')" >
     <hr>
            <a href="${pageContext.request.contextPath}/systems"> Systems page </a>
        </hr>
        </security:authorize>
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">
        <input type="submit" value="Logout" />
    </form:form>
</body>
</html>