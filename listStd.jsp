<%@ page
	language="java"
	contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<%@ taglib
	prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta
	http-equiv="Content-Type"
	content="text/html; charset=ISO-8859-1"
>

</head>
<body>
<h3>List Student</h3>
	<table border="0">
		
			<tr>
				<td>ID</td>
				<td>First name</td>
				<td>Last name</td>
				<td></td>
				<td>Edit</td>
				<td>Remove</td>
			</tr>
		
		<c:forEach
			items="${stdList}"
			var="std"
		>
		
			<tr>
				<td>${std.id}</td>
				<td>${std.stdFname}</td>
				<td>${std.stdLname}</td>
				<td><a href="listStdDetail.do?id=${std.id}">View Profile</a></td>
				<td><a href="editStd.do?id=${std.id}">Edit</a></td>
				<td><a href="deleteStd.do?id=${std.id}">Remove</a></td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<a href="newStd.do">Create new member</a>

</body>
</html>