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
                        <a href="index.php?option=sanpham&id=<?php echo $row['alias']; ?>">
                        <img src="public/imgs/product/<?php echo $row['img']; ?>" alt="<?php echo $row['name']; ?>">
                        </a>
                        <figcaption>
                           <h2 class="left"><span>MỚI</span></h2>
                           <div class="productselect" style="display:none">
                              <input type="hidden" name="variantId" value="2109365">
                           </div>
                           <!--số lượng-->
                           <div class="soluong" style="display:none">
                              <label>Số lượng</label>
                              <div class="input-group quantity">
                                 <span class="input-group-btn">
                                 <a id="q_down" class="btn btn-default" type="button">-</a>
                                 </span>
                                 <input type="text" class="form-control" name="quantity" id="quantity_wanted" size="2" value="1">
                                 <span class="input-group-btn">
                                 <a id="q_up" class="btn btn-default" type="button">+</a>
                                 </span>
                              </div>
                           </div>
                           <p> 
                              <button class="aeffects  add-to-cart" type="submit" id="button-cart">
                              <span class="glyphicon glyphicon-shopping-cart"></span></button>    
                              <a href="index.php?option=sanpham&id=<?php echo $row['alias']; ?>"><i class="fa fa-external-link"></i></a>
                           </p>
                        </figcaption>
                     </figure>
                     <div class="itemdetail itemfotter">
                        <div class="itemdetailtitle">
                           <a href="index.php?option=sanpham&id=<?php echo $row['alias']; ?>"><?php echo $row['name']; ?></a>
                        </div>
                        <div class="productprice">
                           <a class="price" href=""><?php echo number_format($row['price_buy']); ?>vnđ</a>
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
