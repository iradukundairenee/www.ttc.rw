  <?php
            $conn=mysqli_connect("localhost","root1","ttcmururu5","ttcmururu")or die(mysqli_error($conn));
            if (isset($_POST['submitt'])) {
        
           $name=$_POST['name'];
           $email=$_POST['email'];
           $message=$_POST['message'];
           $query=mysqli_query($conn,"INSERT INTO contactus VALUES('','$name','$email','$message')")or die(mysqli_error($conn));
            }
            if ($query) {
            	header("location:index.php");
            }

           
            ?>