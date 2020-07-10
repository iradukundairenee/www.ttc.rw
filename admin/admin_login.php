<!DOCTYPE html>
<html>
<head>
	<title></title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
</head>
<body style="margin-top: 100px;">
	<div class="container">
		<div class="row ">
			<div class="col-sm-3 col-lg-3 col-md-4 offset-lg-4 jumbotron">
        <h5><i><b>admin</b></i></h5>
	<form action="index.php" method="POST">
			<label for="username"><b><i>username</i></b></label>
		<input class="form-control" type="text" name="username" placeholder="enter username here" required="">
				<label for="password"><b><i>password</i></b></label>
		<input class="form-control" type="password" name="password" placeholder="enter username here" required="">
		<input class="btn bg-info btn-block  text-white" type="submit" name="login" value="login">
		
	</form>

</body>
</html>
 
 <?php 
if (isset($_POST['login'])) {
	$conn=mysqli_connect("localhost","root1","ttcmururu5","ttcmururu")or die(mysqli_error($conn));
	$username=$_POST['username'];
	$password=$_POST['password'];
	$query=mysqli_query($conn,"SELECT * FROM admin_login WHERE username='$username' AND password='$password'")or die(mysqli_error($conn));
	$row=mysqli_num_rows($query);
	if ($row==1) {
		
		header("location:index.php");
	}
	else{
		header("location:admin_login.php");
	}
}

?>