<?php
	session_start();
	include("global.php");
	
	//get values pass from form in signup.php file
	$username = mysqli_real_escape_string($connection, $_POST['username']);
	$password = md5 ($_POST['password']);
	
	$sql = "Select * from signup where username='$username' and password='$password'";
	$result=mysqli_query($connection, $sql);
	//if data is present signu
	if(mysqli_num_rows($result) > 0){

		$sql = "Select username,id from signup";
		$resUser = mysqli_query($connection, $sql);
		if(mysqli_num_rows($resUser) > 0){
			//joing all the available user
			$candidates = mysqli_fetch_all($resUser, MYSQLI_ASSOC);
		}
		echo'<script>
				window.location="./homepage.php";
			</script>';
	}else{
		echo'<script>
				alert("Invalid Username or password");
				window.location="./login_form.php";
			</script>';
	}

?>