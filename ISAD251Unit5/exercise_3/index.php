<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<form method="POST">
		<input type="text" name="Username"/>
		<input type="password" name="Password"/>
		<input type="submit" value="Enter"/>
	</form>
	<?php
		$username = $_GET['Username'];
		$password = $_GET['Password'];
		if($response != "");
		{
			echo $username . $password;
		}
	?>
</body>
</html>
