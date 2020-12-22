<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Users</title>
</head>
<body>
<h3>ALl Students</h3>
<table>
<tr>
<th>
StudentId
</th>
<th>
firstName
</th>
<th>
Email
</th>
</tr>

<c:forEach items="${students}" var="student">
<tr>
<td>
${student.userId}
</td>
<td>
${student.firstName}
</td>
<td>
${student.email}
</td>
</tr>
</c:forEach>
</table>
</body>
</html>