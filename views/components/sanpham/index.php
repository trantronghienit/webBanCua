<div id="site-content">
   <div class="container">
      <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
         <div class="left-side">
            <div id="collection-filters-container"></div>
            <?php loadModel('Category')?>
            <script>
               (function($) {
                   $.fn.extend({
                       accordion: function(options) {
                           var defaults = {
                               accordion: 'true',
                               speed: 300,
                               closedSign: '[-]',
                               openedSign: '[+]'
                           };
                           var opts = $.extend(defaults, options);
                           var $this = $(this);
                           $this.find("li").each(function() {
                               if ($(this).find("ul").size() != 0) {
                                   $(this).find("a:first").after("<em>" + opts.closedSign + "</em>");
               
                               }
                           });
                           $this.find("li em").click(function() {
                               if ($(this).parent().find("ul").size() != 0) {
                                   if (opts.accordion) {
                                       //Do nothing when the list is open
                                       if (!$(this).parent().find("ul").is(':visible')) {
                                           parents = $(this).parent().parents("ul");
                                           visible = $this.find("ul:visible");
                                           visible.each(function(visibleIndex) {
                                               var close = true;
                                               parents.each(function(parentIndex) {
                                                   if (parents[parentIndex] == visible[visibleIndex]) {
                                                       close = false;
                                                       return false;
                                                   }
                                               });
                                               if (close) {
                                                   if ($(this).parent().find("ul") != visible[visibleIndex]) {
                                                       $(visible[visibleIndex]).slideUp(opts.speed, function() {
                                                           $(this).parent("li").find("em:first").html(opts.closedSign);
                                                       });
                                                   }
                                               }
                                           });
                                       }
                                   }
                                   if ($(this).parent().find("ul:first").is(":visible")) {
                                       $(this).parent().find("ul:first").slideUp(opts.speed, function() {
                                           $(this).parent("li").find("em:first").delay(opts.speed).html(opts.closedSign);
                                       });
                                   } else {
                                       $(this).parent().find("ul:first").slideDown(opts.speed, function() {
                                           $(this).parent("li").find("em:first").delay(opts.speed).html(opts.openedSign);
                                       });
                                   }
                               }
                           });
                       }
                   });
               })(jQuery);
               /* Call List collections */
               $(".list-collections").accordion({
                   accordion: false,
                   speed: 300,
                   closedSign: '<i class="fa fa-angle-right"></i>',
                   openedSign: '<i class="fa fa-angle-up"></i>'
               }); 
            </script>  
         </div>
      </div>
      <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
         <div class="right-side rscollectionpage">
            <h3 style="text-align:center;color: blue;font-size: 28px;"><i>Tất Cả Sản Phẩm</i></h3>
            <?php foreach ($list as $row): ?>
            <form action="/cart/add" method="post">
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
                           <a href=""><?php echo $row['name']; ?></a>
                        </div>
                        <div class="productprice">
                           <a class="price" href=""><?php echo number_format($row['price_buy']); ?>vnđ</a>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
            <?php endforeach; ?>
            <!-- <p>Không tìm thấy kết quả phù hợp với từ khóa</p> -->
         </div>
         <ul class="pagination">
            <?php echo $phantrang->PagePer($total,$current,$limit,$url='sanpham'); ?>
         </ul>
      </div>
   </div>
</div>