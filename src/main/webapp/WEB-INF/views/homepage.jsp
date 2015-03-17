<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
</head>
<body>
	<center>
		<h2>Hello ${name}</h2>
		<h3>
			${message}
		</h3>
		
		<c:forEach items="${info}" var="userInfo">
		${user.firstname}
		</c:forEach>
		
		<h3>
			<a href="update">Update Info</a>
		</h3>
	</center>
</body>
</html>