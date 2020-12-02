<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" >
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/add-customer-style.css" >
<title>Add Customer</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Add Customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="post">
			<table>
				<tr>
					<td>First name : </td>
					<td><form:input path="firstName"/></td>
				</tr>
				<tr>
					<td>Last name : </td>
					<td><form:input path="lastName"/></td>
				</tr>
				<tr>
					<td>Email : </td>
					<td><form:input path="email"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" class="save"/></td>
				</tr>
			</table>
		</form:form>
		
		<a href="${pageContext.request.contextPath }/customer/list">Back to list</a>
	</div>
</body>
</html>