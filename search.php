<!DOCTYPE html>
<html lang="en">
<head>
	<style>
		.icon {
			font-size: 35px;
			font-weight: 500;
			color: black;
		}
	</style>
</head>
<body>
	<div class="icon text-center">Rate<b style="color: darkcyan;">&</b>Review</div>
</body>
	
<?php
include('inc/header.php');
$con = new PDO("mysql:host=localhost;dbname=rating_system",'root','');
//$con = mysqli_connect("localhost","root","","rating_system");

if (isset($_POST["submit"])) {
	$str = $_POST["search"];
	$sth = $con->prepare("SELECT * FROM `item` WHERE name LIKE '%$str%'");

	$sth->setFetchMode(PDO:: FETCH_OBJ);
	$sth -> execute();

	if($row = $sth->fetch())
	{
		?>
		<br>
        <h2><b><b style="color: teal">Search results:</b></b></h2>
		
		<div class="row w-75 m-auto">
            <div class="col-sm-3" >
			    <img class="product_image" src="image/<?php echo $row->image; ?>" style="width:300px;height:168px;padding-top:10px;margin:5px;">
		    </div>
			<div class="col-sm-8">
                <h4 style="margin-top:10px;"><?php echo $row->name; ?></h4>
                <a href="show_rating.php?item_id=<?php echo $row->id; ?>">Rating & Reviews</a>
                <?php echo $row->description;?>
            </div>
        </div>
<?php 
	}
	else{
		echo "<h3>Name Does not exist!!</h3>";
	}
}

?>