<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Welcome to Student adminHome Page
${user.firstName} 
<a href="logout">Logout</a>
<a href="liststudents">List Students</a>
<a href="listsubject">List Subjects</a>
</body>
</html>