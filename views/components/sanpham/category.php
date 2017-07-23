<?php
   $product=loadModel('product');
   $phantrang=loadClass('pagination');
   $current=$phantrang->PageCurrent();
   $limit=12;
   $first=$phantrang->PageFirst($current,$limit);
   //lay cat///////////////
   $category=loadModel('category');
   $catlink=$_REQUEST['cat'];
   $catid=$category->category_id($catlink);
   $catlist[]=$catid;
   if ($category->category_parentid($catid)!=false)
    {
       $mang=$category->category_parentid($catid);
       foreach ($mang as $r) {
           $catlist[]=$r['id'];
       }
   }
   $total=$product->product_category_count($catlist);
   $list=$product->product_category($catlist,$first,$limit);
   ?>

   <div class="container">
     
         <div class="right-side rscollectionpage">
            <?php foreach ($list as $row): ?>
            <form action="" method="post">
               <div class="newitemscontent col-xs-12 col-sm-6 col-md-3 col-lg-3">
                   <div class="grid spbanchay">
                     <figure class="effect-hera banchay">
                        <a href="index.php?option=sanpham&id=<?php
                           echo $row['alias'];
                           ?>">
                        <img src="public/imgs/product/<?php
                           echo $row['img'];
                           ?>" class="img-responsive" alt="<?php
                           echo $row['name'];
                           ?>">
                        </a>
                     </figure>
                     <div class="itemdetail itemfotter">
                        <div class="itemdetailtitle">
                           <a href="index.php?option=sanpham&id=<?php
                              echo $row['alias'];
                              ?>"><?php
                              echo $row['name'];
                              ?></a>
                        </div>
                        <p>&nbsp;Cửa sổ 2 cánh mở quay Hệ cửa: cửa sổ mở quay Cửa sổ 2 cánh mở quay Kính suốt […]</p>
                        <div class="add-to-cart muahang col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <button class="addtocart btn btn-info btn-lg hvr-sweep-to-right mhproduct" type="submit" id="button-cart">
                           <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; Chi Tiết</button>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
            <?php endforeach; ?>
         </div>
         <ul class="pagination">
            <?php echo $phantrang->PagePer($total,$current,$limit,$url='sanpham');?>
         </ul>
     
   </div>
