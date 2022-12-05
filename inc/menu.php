<?php
$userName = '';
$show = '';

if(!empty($_SESSION['userid']) && $_SESSION['userid']) {
	$userName =  $_SESSION['username'];		
} else {
	$show = 'hidden';
}
?>	

<div id="loggedPanel" class="<?php echo $show; ?>"><h3>
	Welcome <span id="loggedUser" class="logged-user"><?php echo $userName; ?>,</span></h3>
	<a class="btn btn-primary" href="action.php?action=logout" role="button">Logout</a>
</div>
<br><br>