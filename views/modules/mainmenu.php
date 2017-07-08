
<?php 
$category=loadModel('category');
$mainmenu1=$category->category_mainmenu(0);
$htmlmainmenu="";
foreach ($mainmenu1 as $m1) {
    $mainmenu2=$category->category_mainmenu($m1['id']);
    if(count($mainmenu2))
    {
        $htmlmainmenu.="<li class='hassub'>";
                $htmlmainmenu.="<a href='index.php?option=sanpham&cat=".$m1['link']."'>".$m1['name']."</a>";                              
                $htmlmainmenu.="<ul class='level3'>";
                    foreach ($mainmenu2 as $m2)
                    {
                        $htmlmainmenu.="<li><a href='index.php?option=sanpham&cat=".$m2['link']."'>".$m2['name']."</a></li>";
                    }
                $htmlmainmenu.="</ul>";
            $htmlmainmenu.="</li>";
    }
    else
    {
        $htmlmainmenu.="<li><a href='index.php?option=sanpham&cat=".$m1['link']."'>".$m1['name']."</a></li>";
    }
}
?>

<ul class="nav navbar-nav">
    <li><a href="index.php">Trang chủ</a></li>    

    <li><a href="index.php?option=gioithieu">Giới Thiệu</a></li>     

    <li class=" dropdown yamm-fw">
        <a href="index.php?option=sanpham" data-toggle="dropdown" class="menuhvdown dropdown-toggle">Sản phẩm <i class="fa fa-angle-down"></i></a>
        <ul class="dropdown-menu normal">  
        <?php echo $htmlmainmenu ?>                      
        </ul>
    </li>

    <li><a href="index.php?option=baogia">Báo Giá</a></li>  

            

    <li class=" dropdown yamm-fw">
        <a href="index.php?option=sanpham" data-toggle="dropdown" class="menuhvdown dropdown-toggle">Hình ảnh công trình<i class="fa fa-angle-down"></i></a>
        <ul class="dropdown-menu normal">  
        <?php echo $htmlmainmenu ?>                      
        </ul>
    </li>

    <li><a href="index.php?option=tintuc">Tin Tức</a></li>     
    <li><a href="index.php?option=lienhe">Liên Hệ</a></li>                    
</ul>
