<?php
$category=loadModel('Category');
$listcategory=$category->category_all();
$myclass=loadClass('myclass');
?>
<div class="body-menu">
<?php $myclass->menu_dequi($listcategory,0); ?>
</div> 