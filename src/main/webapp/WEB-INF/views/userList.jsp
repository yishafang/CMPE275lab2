<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User List</title>
</head>
<body>
 	<div class="panel panel-default">
  		<!-- Default panel contents -->
  		<div class="panel-heading">User List</div>
  		
	  		<!-- Table -->
	  	<table class="table table-striped">
		    <thead>
		        <tr>
		            <th>ID</th>
		            <th>First Name</th>
		            <th>Last Name</th>
		            <th>Email</th>
		            <th>Address</th>
		            <th>Organization</th>
		            <th>About Myself</th>
		        </tr>
		    </thead>
		    <tbody>
		    	<c:forEach items="${userList}" var="user">
		    		<tr>
						<td>${user.id}</td>
						<td>${user.firstname}</td>
						<td>${user.lastname}</td>
						<td>${user.email}</td>
						<td>${user.address}</td>
						<td>${user.organization}</td>
						<td>${user.aboutMyself}</td>
		    		</tr>
		    	</c:forEach>
		    </tbody>
		</table>
	</div> 
	<center>
		<a class="btn btn-primary" href="index">Index Page</a>
	
	</center>	
</body>
</html>