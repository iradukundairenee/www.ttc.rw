<?php
include'includes/menu.php'; 
?></br></br></br>

<?php
session_start();
if (isset($_SESSION['username'])) {
  //echo "<h2>welcome to contactus page</h2>";
  echo "<br><a href='logout.php'><input type='button' name='logout' value='logout'></a>";
}
else{
  header("location:admin_login.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
</head>
<body>

	<center>
   <table border="1px">
   	<tr>
   		<th>name</th>
   		<th>email</th>
   		<th>message</th>
      <th>action</th>
   	</tr>
		
			<?php
  $conn=mysqli_connect("localhost","root1","ttcmururu5","ttcmururu")or die(mysqli_error($conn));
  $query=mysqli_query($conn,"SELECT *  FROM contactus ORDER BY id desc")or die(mysqli_error($conn));
  ?>



<div class="container-fluid">
<div class="content p-3">
<div class="row  justify-content-center">
                <div class="card col-12 col-md-8 offset-md-2 col-lg-10 offset-lg-1">
                <div class="row">
  <?php 
  while ($result=mysqli_fetch_assoc($query)){
  ?>
  <tr>
  	<td><?php echo $result['name'] ?></td>
    <td><a href="www.gmail.com ?>"><?php echo $result['email'] ?></a></td>
    <td><?php echo $result['message'] ?></td>
    <td><a href="delete_contact.php?delete=<?php  echo $result['id'];?>">delete</a></td>
    </tr>
  <?php
  }
  ?>

</table>


 </div>
          </div>
          </div>
          </div>
          </div>


	<!--<form action="?" method="POST">
		<colgroup>ENTER SCHOOL ADDRESS</colgroup>
		<div class="justify-content-center">
		<input type="text" name="postal" placeholder="enter school PO box" required="">
		</div>
		<div>
	    <input type="email" name="email" placeholder="enter school email " required="">
	    </div>
		<div>
		<input type="number" name="phonenumber" placeholder="enter phonenumber of school adminstration" required="">
	   </div>
	   <div>
		<input type="submit" name="submit" >
	   </div>
	</form>
</div>
</center>
</body>
<script src="jquery.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>
<?php
//if (isset($_POST['submit'])) {
 //$conn=mysqli_connect("localhost","root","","ttcmururu")or die(mysqli_error($conn));
 //$postal=$_POST['postal'];
 //$email=$_POST['email'];
 //$phonenumber=$_POST['phonenumber'];
 //$query=mysqli_query($conn,"INSERT INTO contactus(postal,email,phonenumber) VALUES('$postal','$email','$phonenumber')")or die(mysqli_error($conn));
 //}
 
 ?>