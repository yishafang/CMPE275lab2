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
<script>
$(function(){
$("#deleteuser").click(function() { 
	var userId=document.getElementById("userid").value;
	console.log(userId);
              $.ajax({
                url:"/275lab2/homepage/"+userId,
                type: 'DELETE',
                success: function (result) {
                  alert("User is deleted");
                  window.location.href = "/275lab2/homepage";
                }
            });

    });
/* $("#updateuser").click(function() { 
	var userId=document.getElementById("userid").value;
	console.log($('#myform').serialize());
              $.ajax({
                url:"/275lab2/homepage/"+userId,
                type: 'PUT',
                data: $('#myform').serialize(),
                success: function (result) {
                  alert("User is updated");
                }
            });

    }); */
})
</script>
<body>

<center>
<div class="container">
  <h2>Home page</h2>
  <pre>
  <p>
  ${json}
  </p>
  </pre>
  <form class="form-horizontal" role="form" method="post">
    <div class="form-group form-group-id">
      <label class="col-sm-2 control-label" for="id">ID</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="id" id="userid" value=${id} readonly>
      </div>
    </div>
    <div class="form-group form-group-fn">
      <label class="col-sm-2 control-label" for="firstname">First Name</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="firstname" value=${firstname}>
      </div>
    </div>
    <div class="form-group form-group-ln">
      <label class="col-sm-2 control-label" for="lastname">Last Name</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="lastname" value=${lastname}>
      </div>
    </div>
    <div class="form-group form-group-email">
      <label class="col-sm-2 control-label" for="email">Email</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="email" value=${email}>
      </div>
    </div>
    <div class="form-group form-group-addr">
      <label class="col-sm-2 control-label" for="address">Address</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="address" value=${address}>
      </div>
    </div>
    <div class="form-group form-group-org">
      <label class="col-sm-2 control-label" for="organization">Organization</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="organization" value=${organization}>
      </div>
    </div>
    <div class="form-group form-group-about">
      <label class="col-sm-2 control-label" for="aboutMyself">AboutMyself</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="aboutMyself" value=${aboutMyself}>
      </div>
    </div>
   <div class="form-row"><input class="btn btn-primary" type="submit" value="Update"></div>
  </form>
  	<a id = "deleteuser" class="btn btn-primary">DELETE</a>
</div>
</center>
</body>
</html>