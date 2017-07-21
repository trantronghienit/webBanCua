<?php
$topic=loadModel('topic');
$content=loadModel('content');
$catlink = $_REQUEST['option'];
$catid=$topic->topic_id($catlink);
$row=$content->content_gioithieu($catid);

?>
    <div class="container">
     <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
         <p align="center"><span style="font-size:30px"><strong><?php echo $row['title']; ?></strong></span><i><br>Trân Trọng giới thiệu!</i></p>
        <p style="padding: 0 70px;"><?php echo $row['detail']; ?></p>
          </div>
    </div>

