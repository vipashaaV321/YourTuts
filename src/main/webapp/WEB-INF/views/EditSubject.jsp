<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Subject</title>
</head>
<body>
<form:form action="../updatesubject" modelAttribute="subject" method="post"> 
<form:hidden path="subjectId"/> 
<form:input path="subjectName" placeholder="SubjectName"/>  
<br/>
<form:checkbox path="isActive" placeholder="Active"/>  
<br/>
 <input type="submit" value="Update Subject" />  
</form:form>
</body>
</html>