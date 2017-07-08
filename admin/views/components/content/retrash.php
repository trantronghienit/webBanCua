<?php 
	$content=loadModel('content');
	$id=$_REQUEST['id'];	
	$content->content_retrash($id);
 ?>
 <script>
 	document.location='index.php?option=content&cat=trash';
 </script>
 