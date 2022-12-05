<?php 
session_start();
include('inc/header.php');
?>
<title>Restro Star Rating System</title>
<script src = "js/rating.js"></script>
<link rel = "stylesheet" href="css/style.css">
<?php include('inc/container.php');?>
	<div class = "container">
		<center>
		<h1><b style="color:teal;text-align:center">Restaurant Rate and Review!</b></h1>
		</center>
		<?php
		include 'inc/menu.php';
		include 'class/Rating.php';
		$rating = new Rating();
		$itemList = $rating->getItemList();
		foreach($itemList as $item){
			$average = $rating->getRatingAverage($item["id"]);
		?>	
		<div class="row">
			<div class = "col-sm-4" >
				<img class = "product_image" src="image/<?php echo $item["image"]; ?>" style="width:300px;height:168px;padding-top:10px;margin:5px;">
			</div>
			<div class = "col-sm-8">
			<h4 style = "margin-top:10px;"><?php echo $item["name"]; ?></h4>
			<div><span class = "average"><?php printf('%.1f', $average); ?> <small>/ 5</small></span> <span class="rating-reviews"><a href="show_rating.php?item_id=<?php echo $item["id"]; ?>">Rating & Reviews</a></span></div>
			<?php echo $item["description"]; ?>		
			</div>		
		</div>
		<?php 
			} 
			?>	
	</div>	

<?php include('inc/footer.php');?>






