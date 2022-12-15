<?php
$con = mysqli_connect("localhost","root","","rating_system"); 

if(!$con){
    die(mysqli_error($con));
}
//sanitizing and storing
$username = mysqli_real_escape_string($con, $_POST['username']);
$password = mysqli_real_escape_string($con, $_POST['password']);
$cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);
$image = mysqli_real_escape_string($con, $_FILES['image']['name']);
$tmp_name = mysqli_real_escape_string($con, $_FILES['image']['tmp_name']);

if($password != $cpassword){
    echo'<script>
        alert("Password did not match");
        window.location="registration.php"
    </script>';
}
else{
    
    move_uploaded_file($tmp_name,"image/userpics/$image"); 
    //Encrypting Password
	$passwordSha = hash('sha256', $password);
	$sql = "insert into item_users (username, password, avatar) values ('$username','$passwordSha','$image')";
	
    $result = mysqli_query($con, $sql);
    if($result){
        echo'<script>
            alert("Registration Sucessful!!");
            window.location="index.php";
        </script>';
    }
}
?>