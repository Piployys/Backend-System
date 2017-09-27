<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">

<title>List All Student</title>
</head>
<body>
	<table border="1">
		<c:forEach items="${regMemList}" var="member">
			<tr>
				<td>${member.registerId}</td>
				<td>${member.student_Fname}</td>
				<td>${member.student_Lname}</td>
				<td>${member.student_School}</td>
				<td>${member.student_Major}</td>
				<td>${member.student_Email}</td>
				<td>${member.student_School}</td>
				<td>${member.student_Password}</td>
				<td>${member.student_ConfirmPass}</td>
				<td>${member.citizen_Id}</td>
				<td>${member.student_Id}</td>
				<td><a href="editRegisterMember.do?id=${member.registerId}">Edit</a></td>
				<td><a href="deleteRegisterMember.do?id=${member.registerId}">Remove</a></td>

			</tr>
		</c:forEach>
	</table>
	<a href="newRegisterMember.do">Register</a>

</body>
</html>