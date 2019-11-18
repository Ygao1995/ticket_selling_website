<?php
//receive client form data via post method
$username=$_POST['username'];
$userpin=$_POST['pin'];
$fullname=$_POST['fullname'];
$parts = explode('/',$_POST['dateitem']);
$birthday = $parts[2] . '-' . $parts[0] . '-' . $parts[1];

$jhuemail=$_POST['email'];
$careyprogram=$_POST['program'];
require_once 'login.php';

// connect to the database
$conn = new mysqli($db_hostname, $db_username, $db_password, $db_database);

if ($conn->connect_error)
{
  echo "Failed to connect to MySQL: " . $conn->connect_error;
}

$query= "SELECT * FROM users WHERE username = '$username'";

$result = $conn->query($query);
// if database has already record, show username already taken
if($result->num_rows > 0) {
	echo "<script type='text/javascript'>alert('username already taken');
		window.location.href = 'signin.html'; </script>";
	exit();
}


$insert= "INSERT INTO users (username, userpin, fullname, birthday, jhuemail, program) VALUES ('$username', '$userpin', '$fullname', '$birthday', '$jhuemail', '$careyprogram')";

$insert_result = $conn->query($insert);


echo "<script type='text/javascript'>alert('Thanks for registering! You successfully create your account!');
	window.location.href = 'index.html'; </script>";

?>


