<?php 
$linkcat=$_REQUEST['option'];
$content=loadModel('content');
$topic=loadModel('topic');
$catid=$topic->topic_id($linkcat);
$phantrang=loadClass('pagination');
$current=$phantrang->PageCurrent();
$limit=6;
$first=$phantrang->PageFirst($current,$limit);
$total=$content->content_tintuc_count($catid);
$list=$content->content_tintuc($catid,$first, $limit);
$string=loadClass('string');
?>
<div id="site-content">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	<?php foreach ($list as $row):?>
			<div class="row news-title">
				<a href="index.php?option=tintuc&id=<?php echo $row['alias'];?>">
					<h3><?php echo $row['title']; ?></h3>
				</a>
			</div>
			<div class="row news-intro">
				<div class="col-md-4">
					<a href="index.php?option=tintuc&id=<?php echo $row['alias'];?>">
						<img src="public/images/contents/<?php echo $row['img']; ?>" class="img-responsive" alt="Image">
					</a>
				</div>
				<div class="col-md-8">
					<?php echo $string->string_limit($row['detail'],600); ?>
					<div class="text-right">
						<a href="index.php?option=tintuc&id=<?php echo $row['alias'];?>"></a>
					</div>
				</div>
			</div>
	<?php endforeach;?>
	</div>	
	<div class="text-center">
		<ul class="pagination">
			<?php echo $phantrang->PagePer($total,$current,$limit,$url='tintuc'); ?>
		</ul>
	</div>
</div>