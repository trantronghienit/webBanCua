<?php 
	$users=loadModel('users');
	$id=$_REQUEST['id'];	
	$users->users_retrash($id);
 ?>
 <script>
 	document.location='index.php?option=users&cat=trash';
 </script>
 