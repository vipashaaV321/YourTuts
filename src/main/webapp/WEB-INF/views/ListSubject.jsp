<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<a href="newsubject">New Subject</a>
</head>
<body>
<h3>Subjects</h3>
<table>
<tr>
<th>
SubjectId
</th>
<th>
SubjectName
</th>
<th>
IsActive
</th>
<th>
Action
</th>
</tr>

<c:forEach items="${subjects}" var="subject">
<tr>
<td>
${subject.subjectId}
</td>
<td>
${subject.subjectName}
</td>
<td>
${subject.isActive}
</td>
<td>
<a href="editsubject/${subject.subjectId}">Edit</a> | <a href="deletesubject?subjectId=${subject.subjectId}">Delete</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>