<?php 
	$product=loadModel('product');
	$id=$_REQUEST['id'];	
	$product->product_retrash($id);
 ?>
 <script>
 	document.location='index.php?option=product&cat=trash';
 </script>
 