<?php 
if (isset($_GET['delete'])) {
	$conn=mysqli_connect("localhost","root1","ttcmururu5","ttcmururu")or die(mysqli_error($conn));
	$id=$_GET['delete'];
	$query=mysqli_query($conn,"DELETE FROM contactus WHERE id='$id'")or die(mysqli_error($conn));
	if ($query) {
	header("location:contactus.php");
	}
	else{
		echo "message didin't deleted please check error in your code";
	}
}


?>