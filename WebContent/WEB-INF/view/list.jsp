<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" >
<title>List Customers</title>
<script type="text/javascript">
	function load(){
		var url = new URL(window.location);
		searchInput = url.searchParams.get("searchInput");
		document.getElementById("searchInput").value = searchInput;
	}
</script>
</head>
<body onload="load()">
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			
			<form:form action="list" method="get" >
				<input type="text" placeholder="Search" id="searchInput" name="searchInput" />			
				<input type="submit" value="Search" class="add-button"/><br/>
			</form:form>
			
			<input type="button" value="Add customer" onclick="window.location.href='form';" class="add-button">
			<table>
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${customers }" var="customer">
						<c:url var="updateLink" value="/customer/update">
							<c:param name="customerId" value="${customer.id }"></c:param>
						</c:url>
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${customer.id }"></c:param>
						</c:url>
						<tr>
							<td>${customer.firstName }</td>
							<td>${customer.lastName }</td>
							<td>${customer.email }</td>
							<td><a href="${updateLink }">Update</a></td>
							<td><a href="${deleteLink }" onclick="if(!confirm('Are you sure you wanna delete this customer ?')) return false;">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>