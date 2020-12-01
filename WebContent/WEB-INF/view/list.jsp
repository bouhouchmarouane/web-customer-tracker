<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Customers</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customers }" var="customer">
				<tr>
					<td>${customer.firstName }</td>
					<td>${customer.lastName }</td>
					<td>${customer.email }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>