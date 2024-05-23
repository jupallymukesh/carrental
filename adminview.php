<!DOCTYPE html>
<html>
<head>
   <title>ADMIN</title>
   <link rel="stylesheet"  href="style.css">
   <script type="text/javascript">
    function Navigate(){   
         window.location.replace('admin.php');
        return false;
    }
   </script>
</head>

<body>
<header>
<h1>JMR CAR RENTAL SERVICES</h1>
      <nav>
        <ul>
          <li><a href="car.html">Home</a></li>
          <li><a href="cars.html">Cars</a></li>
		  <li><a onclick="Navigate()"><button style="background-color:#333;border:none;color:white;font-size:16px;">Logout</button></a></li>
		  <img src="mukesh.jpg" alt="mukesh"class="avimg">
        </ul>
      </nav>
</header>
<main>
<p >last updated on : 21/07/2023 - 21:59:46.</p>
<br>
<br>
<h2>ORDERS</h2>
<?php
$host="localhost";
$dbname="example";
$username="root";
$password="";


$conn = new mysqli($host,$username,$password,$dbname);

if(mysqli_connect_errno())
{
	die ("Connection Failed".mysqli_connect_error());
}

$sql="select * from order_table";
$result=$conn->query($sql);

if($result->num_rows>0)
{
	?>
	
	<table style="width:100%;border:1px solid black;">
  <tr>
    <th style="border:1px solid black;">Id</th>
    <th style="border:1px solid black;">Name</th>
    <th style="border:1px solid black;">carType</th>
	<th style="border:1px solid black;">Days</th>
	<th style="border:1px solid black;">Driverrequired</th>
	<th style="border:1px solid black;">Sugestions</th>
  </tr>
<?php
	while($row = $result->fetch_assoc()) 
	{?>
            <tr>
			<td style="border:1px solid black;"><?php echo $row["id"];?></td>
			<td style="border:1px solid black;"><?php echo $row["name"];?></td>
			<td style="border:1px solid black;"><?php echo $row["cartype"];?></td>
			<td style="border:1px solid black;"><?php echo $row["days"];?></td>
			<td style="border:1px solid black;"><?php echo $row["Driverrequired"];?></td>
			<td style="border:1px solid black;"><?php echo $row["sugestions"];?></td>
			<?php
    }
}
else
{
	echo "No Orders Yet";
}
?>
</table>
<?php
$conn->close();
?>
</main>
<div>
<p class="foot">Jupally Mukesh Rao</p>
</div>
</body>
</html>