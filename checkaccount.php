<?php

$username=$_POST['username'];
$password=$_POST['password'];


require_once 'login.php';

// connect to the database
$conn = new mysqli($db_hostname, $db_username, $db_password, $db_database);

if ($conn->connect_error)
{
  echo "Failed to connect to MySQL: " . $conn->connect_error;
}

$query= "SELECT * FROM users WHERE username = '$username'";

$result = $conn->query($query);
// if database has the record, signin successfully
if($result->num_rows > 0) {
	echo "<script type='text/javascript'>alert('Signin Successfully, thanks!~');
		window.location.href = 'index.html'; </script>";
	exit();
}
else{
	echo "<script type='text/javascript'>alert('Wrong username or password, please check again!');
		window.location.href = 'index.html';
		document.getElementById('modal').classList.remove('hide')
		</script>";

	return false;
}

?>

