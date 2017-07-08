<?php
$topic=loadModel('topic');
$content=loadModel('content');
$catlink = $_REQUEST['option'];
$catid=$topic->topic_id($catlink);
$row=$content->content_gioithieu($catid);

?>
    <div id="site-content">
    <div class="toplink">
        <div class="container">
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                <div class="toplink-left pull-left">
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
                <div class="toplink-right pull-right">
                    <ul class="breadcrumb">
                        <li><a href="index.php">Trang chủ</a></li>
                        <li class="active">Giới thiệu</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="box_container">
         <p align="center"><span style="font-size:30px"><strong><?php echo $row['title']; ?></strong></span><i><br>Trân Trọng giới thiệu!</i></p>
        <p style="padding: 0 70px;"><?php echo $row['detail']; ?></p>
    </div>
</div>
