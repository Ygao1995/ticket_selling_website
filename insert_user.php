<?php
require_once 'login.php';


$conn=new mysqli($db_hostname,$db_username,$db_password,$db_database);

if($conn->connect_error)
{
 echo "Failed to connect: " . $conn->connect_error;
}

$amount=$_POST['insert1'];
$price=$_POST['insert2'];
$usern=$_POST['username'];
$phonen=$_POST['phone'];
$movien=$_POST['movie'];

$query="INSERT INTO usertickets (username,phonenumber,moviename,ticketsamount,ticketprice) VALUES ('".$usern."','".$phonen."','".$movien."','".$amount."','".$price."')";

$query1 ="UPDATE availableticket
        SET remaingtickets=remaingtickets-'".$amount."'
        WHERE moviename='".$movien."'";

$query2="SELECT remaingtickets from availableticket where moviename='".$movien."'";

$query3 ="UPDATE availableticket
        SET remaingtickets=remaingtickets+'".$amount."'
        WHERE moviename='".$movien."'";

        
if($conn->query($query)===TRUE){
$conn->query($query1);
$conn->query($query2);
$result=$conn->query($query2);
$row= $result->fetch_assoc();
echo "$row[remaingtickets]";


	if($row['remaingtickets'] < 0){
	echo "<script type='text/javascript'>alert('Sold out!!!'); </script>";
	$conn->query($query3);
		}
	
}else{
echo "error". $query . "<br />" .$conn->error;
}	

?>
