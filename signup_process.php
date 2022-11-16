<?php
	include("global.php");
	
	//accessing data and storing to variable
	$username = mysqli_real_escape_string($connection, $_POST['username']);
	$password = mysqli_real_escape_string($connection, $_POST['password']);
	$confirm_password = mysqli_real_escape_string($connection, $_POST['confirmpw']);
	
	//checking if confirmation password matched and if not matched redirecting to login page
	if($password != $confirm_password){
    echo'<script>
        alert("Password did not match");
        window.location="./login_form.php"
    </script>';
	}
	else{
		//encrypting Password with MD5 hash function
		$passwordMd5 = md5($password);
		
		$sql= "Insert INTO signup (username,password,confirmpw) values ('$username','$passwordMd5','$confirm_password')";

		//executing the above query and checking if sucessful
		$res = mysqli_query($connection, $sql);
		if($res){
			echo'<script>
				alert("Signup Sucessful!!");
				window.location="./login_form.php";
			</script>';
		}
	}
?>