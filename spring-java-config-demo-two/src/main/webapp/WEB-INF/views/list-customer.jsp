<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Customer</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
	integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h2 class="card-header text-center bg-success">CRM - Customer Relationship Manager</h2>
		<h3> # LIST CUSTOMER</h3>
		<a href="show-form-add" type="button" class="btn btn-primary">Add Customer</a>
		<hr>
		<table class="table table-bordered col-10">
			<thead>
				<tr> 
					<th>First name</th>
					<th>Last name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="temp" items="${customers }">
					<tr>
						<td>${temp.firstName }</td>
						<td>${temp.lastName }</td>
						<td>${temp.email}</td>
						<td>
							<button class="btn btn-danger" onclick=" if (!confirm('Are you sure delete this customer!')) return false;"><a href="delete?id=${temp.id} ">Delete</a></button>
							<a class="btn btn-info" href="load?id=${temp.id} ">Update</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>