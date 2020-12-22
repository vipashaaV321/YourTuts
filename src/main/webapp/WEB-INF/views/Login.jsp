<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
 <form:form action="authenticate" modelAttribute="loginBean" method="post">  

        Email: <form:input path="email" />  
        <form:errors path="email" cssClass="error" />
        <br><br>  
         Password: <form:password path="password" />  
         <form:errors path="password" cssClass="error" />
        <br><br>  
        <input type="submit" value="Login" />      
    </form:form>  
    ${msg}
</body>
</html>