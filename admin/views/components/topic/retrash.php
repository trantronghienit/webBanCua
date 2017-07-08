<?php 
	$topic=loadModel('topic');
	$id=$_REQUEST['id'];	
	$topic->topic_retrash($id);
 ?>
 <script>
 	document.location='index.php?option=topic&cat=trash';
 </script>
 