<?php 
	$content=loadModel('content');
	$id=$_REQUEST['id'];	
	$row=$content->content_detail($id);
	$hinh="../public/imgs/content".$row['img'];
	if (file_exists($hinh)) {
		unlink($hinh);
	}
	$content->content_delete($id);
	//header('location:index.php?option=content&cat=trash');
 ?>
 <script>
 	document.location='index.php?option=content&cat=trash';
 </script>