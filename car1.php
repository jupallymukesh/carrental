<html>
<head>
    <title>carrent</title>
    <link rel="stylesheet" type="text/css" href="style.css">
   
</head>
<body>
<header>
<h1>Car Rental</h1>
      <nav>
        <ul>
          <li><a href="car.html">Home</a></li>
          <li><a href="cars.html">Cars</a></li>
          <li><a href="contact.html">Contact Us</a></li>
        </ul>
      </nav>
</header>


<main style="height:500px">
<?php

$name=$_POST["name"];
$cartype=$_POST["cartype"];
$days=filter_input(INPUT_POST,"days",FILTER_VALIDATE_INT);
$driver=$_POST["driver"];
$sugestions=$_POST["sugesstions"];
$terms=filter_input(INPUT_POST,"terms",FILTER_VALIDATE_BOOL);

if(!$terms)
{
	die("Terms must be accepted");
	goto mukesh;
}
//var_dump($name, $cartype,$days,$sugesstions,$driver);

$host="localhost";
$dbname="example";
$username="root";
$password="";

$conn=mysqli_connect(hostname : $host,database :$dbname,username:$username,password:$password);

if(mysqli_connect_errno()){
	die("Connection error :".mysqli_connect_error());
	goto mukesh;
}

$sql = "INSERT INTO order_table(name,cartype,days,Driverrequired,sugestions) values (?,?,?,?,?)";
$stmt = mysqli_stmt_init($conn);
?>
<?php
if(!mysqli_stmt_prepare($stmt,$sql))
{
?>
	<p><?php echo ("dhu".mysqli_error($conn));goto mukesh;?></p>
<?php
}
?>
<?php

mysqli_stmt_bind_param($stmt,"ssiss",$name,$cartype,$days,$driver,$sugestions);
mysqli_stmt_execute($stmt);
?>
<p style="color:red"><?php echo"order placed we'll contact soon"?></p>
<?php mukesh:?>
</main>

<footer>
      <p class="foot">&copy; 2023 Car Rental. All rights reserved.</p>
</footer>
</body>
</html>