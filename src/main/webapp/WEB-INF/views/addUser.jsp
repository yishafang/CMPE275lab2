<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <title>Add User</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

<center>
<div class="container">
  <h2>Create User</h2>
  <p>Please enter your information.</p>
  <form class="form-horizontal" role="form" method="post" action="homepage${id}">
    <div class="form-group form-group-id">
      <label class="col-sm-2 control-label" for="id">ID</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="id" id="userid" placeholder="ID">
      </div>
    </div>
    <div class="form-group form-group-fn">
      <label class="col-sm-2 control-label" for="firstname">First Name</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="firstname" placeholder="First Name">
      </div>
    </div>
    <div class="form-group form-group-ln">
      <label class="col-sm-2 control-label" for="lastname">Last Name</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="lastname" placeholder="Last Name">
      </div>
    </div>
    <div class="form-group form-group-email">
      <label class="col-sm-2 control-label" for="email">Email</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="email" placeholder="Email">
      </div>
    </div>
    <div class="form-group form-group-addr">
      <label class="col-sm-2 control-label" for="address">Address</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="address" placeholder="Address">
      </div>
    </div>
    <div class="form-group form-group-org">
      <label class="col-sm-2 control-label" for="organization">Organization</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="organization" placeholder="Organization">
      </div>
    </div>
    <div class="form-group form-group-about">
      <label class="col-sm-2 control-label" for="aboutMyself">AboutMyself</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="aboutMyself" placeholder="AboutMyself">
      </div>
    </div>
    <input class="btn btn-primary" type="submit">
  </form>
 
  <a class="btn btn-primary" href="index">Index Page</a>
</div>
</center>
</body>
</html>