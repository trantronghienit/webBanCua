<?php 
	$category=loadModel('category');
	$id=$_REQUEST['id'];	
	$category->category_delete($id);
	//header('location:index.php?option=category&cat=trash');
 ?>
 <script>
 	document.location='index.php?option=category&cat=trash';
 </script>