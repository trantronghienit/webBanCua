<?php 
	$category=loadModel('category');
	$id=$_REQUEST['id'];	
	$category->category_retrash($id);
 ?>
 <script>
 	document.location='index.php?option=category&cat=trash';
 </script>
 