<?php 
	$content=loadModel('content');
	$id=$_REQUEST['id'];
	$row=$content->content_detail($id);
	$status=($row['status']==1)?0:1;
	$content->content_status($status,$id);
 ?>
 <script>
 	document.location='index.php?option=content';
 </script>