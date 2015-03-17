<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Add User</title>
</head>
<body>
<center>

<h2>User Information</h2>
<form id="form1" method="post" action="addUser" > 
      <div class="form-row"><span class="label">ID :</span><input type="text" name="id" placeholder="ID"/></div>  
      <div class="form-row"><span class="label">First Name :</span><input type="text" name="fname" placeholder="First Name"/></div>  
      <div class="form-row"><span class="label">Last Name :</span><input type="text" name="lname" placeholder="Last Name"/></div> 
      <div class="form-row"><span class="label">Email Address :</span><input type="text" name="email" placeholder="Email Address"/></div> 
      <div class="form-row"><input class="submit" type="submit" value="Create"></div> 
</form> 
</center>
</body>
</html>