<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
</head>
<body>
 <form:form action="saveuser" modelAttribute="user" method="post">  
        First name: <form:input path="firstName" />  
        <form:errors path="firstName" cssClass="error" />       
        <br><br>  
        Email: <form:input path="email" />  
        <form:errors path="email" cssClass="error" />
        <br><br>  
         Password: <form:password path="password" />  
         <form:errors path="password" cssClass="error" />
        <br><br>  
        <input type="submit" value="Signup" />      
    </form:form>  
</body>
</html>