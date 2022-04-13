<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
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
		<h2 class="card-header text-center bg-success">CRM - Customer
			Relationship Manager</h2>
		<h3># UPDATE CUSTOMER</h3>
		<a href="list" type="button" class="btn btn-primary">Back list</a>
		<hr>
		<div class="container col-8">
			<form:form action="update" modelAttribute="customer">  
			<form:input type="hidden" path="id" />
			<div class="form-group">
				<label for="exampleInputEmail1">Firt name:</label> 
				<form:input path="firstName"
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter firt name"/> 
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Last name:</label> 
				<form:input path="lastName"
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter last name"/> 
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address:</label> 
				<form:input path="email"
					type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email"/> 
			</div>
			
			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
		</div>
	</div>
</body>
</html>