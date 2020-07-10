<nav class="navbar navbar-expand-lg navbar-dark bg-faded  fixed-top"   style="background-color: #009999">
	<b class="navbar-brand" href="index.php"><i>TTC MURURU</i></b>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
       <a class="nav-link"   href="index.php"> <b style="color:white;"><i></i></b> </a>
      </li>
         <li class="nav-item">
  <a class="nav-link" href="gallery.php"><b style="color:white;"><i>
       home</i></b></a>
      </li>
      <li class="nav-item">
  <a class="nav-link" href="staff1.php"><b style="color:white;">
      <i>staff</i></b></a>
      </li>
      <li class="nav-item">
  <a class="nav-link" href="aboutus.php"><b style="color:white;">
      <i></i></b></a>
      </li>
        <?php
  $conn=mysqli_connect("localhost","root","","ttcmururu")or die(mysqli_error($conn));
  $query=mysqli_query($conn,"SELECT count(id) AS total FROM contactus")or die(mysqli_error($conn));
  $result=mysqli_fetch_assoc($query);
  $num_rows=$result['total'];
  ?>

</p>
           <li class="nav-item">
  <a class="nav-link" href="contactus.php"><b style="color:white;">
      <i>contact<p style="font-size:15px;color: white;"><?php echo $num_rows; ?></p></i></b></a>
      </li>
    </ul>
  </div>
</nav>