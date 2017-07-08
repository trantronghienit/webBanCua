<?php 
	$product=loadModel('product');
	$id=$_REQUEST['id'];	
	$row=$product->product_detail($id);
	$hinh="../public/imgs/product".$row['img'];
	if (file_exists($hinh)) {
		unlink($hinh);
	}
	$product->product_delete($id);
	//header('location:index.php?option=product&cat=trash');
 ?>
 <script>
 	document.location='index.php?option=product&cat=trash';
 </script>