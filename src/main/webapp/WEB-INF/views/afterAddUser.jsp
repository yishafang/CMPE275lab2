<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>After add user</title>
</head>
<body>

<h2>Submitted User Information</h2>
   <table>
   	<tr>
        <td>ID</td>
        <td>${id}</td>
    </tr>
    <tr>
        <td>First Name</td>
        <td>${firstname}</td>
    </tr>
    <tr>
        <td>Last Name</td>
        <td>${lastname}</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>${email}</td>
    </tr>
    
</table>  
</body>
</html>