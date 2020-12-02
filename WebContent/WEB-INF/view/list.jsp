<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" >
<title>List Customers</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			<input type="button" value="Add customer" onclick="window.location.href='form';" class="add-button">
			<table>
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${customers }" var="customer">
						<c:url var="updateLink" value="/customer/update">
							<c:param name="customerId" value="${customer.id }"></c:param>
						</c:url>
						<tr>
							<td>${customer.firstName }</td>
							<td>${customer.lastName }</td>
							<td>${customer.email }</td>
							<td><a href="${updateLink }">Update</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>