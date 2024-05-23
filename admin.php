<html>
<head>
<title>Contact</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript">
document.onmousedown = disableclick
         status = "Right Click Disabled"
         function disableclick(e) {
             if (event.button == 2)
                 alert("Sorry Right Click has been disabled!");
             return false;
</script>
</head>
<body>
<header >
      <h1>Car Rental</h1>
      <nav>
        <ul>
          <li><a href="car.html">Home</a></li>
          <li><a href="cars.html">Cars</a></li>
        </ul>
      </nav>
</header>
<main class="amain">
<div class="acenter">
  <div class="abox">
    <br>
    <div class="alog">
	  <h2>LOGIN</h2>
	</div>
	<div class="abdiv">
	  <form method="post">
	    <label for="loginid" class="afdis">Login Id</label>
		<br>
		<input type="text" id="loginid" name="loginid" class="afinput">
		
		 <br>
		 <br>
		
		<label for="key" class="afdis">Password</label>
		<br>
		<input type="password" id="key" name="password" class="afinput">
		<br>
		<br>
		<div class="abdiv">
		   <button class="asub">LOGIN</button>
		</div>
	  <form>
	</div>
  </div>
</div>
<?php 
if ($_SERVER['REQUEST_METHOD'] === 'POST') 
{
  $duser="jupallymukesh@gmail.com";
  $dpassword="mukesh@12";

  $user=$_POST["loginid"];
  $password=$_POST["password"];
  

  if($duser == $user)
  {
    if($dpassword == $password)
     {
       header("Location: http://localhost/car/adminview.php");
     }
  else
   {
      echo "Incorrect Password";
   }
  }
 else
  {
    echo "Invalid username";
  }
}
?>
</main>
<footer>
      <p class="foot">&copy; 2023 Car Rental. All rights reserved.</p>
</footer>
</body>
</html>