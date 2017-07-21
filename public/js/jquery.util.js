
jQuery(document).ready(function($){
            $('#etalage').etalage({
               thumb_image_width: 300,
               thumb_image_height: 400,
               source_image_width: 900,
               source_image_height: 1200,
               show_hint: true,
               click_callback: function(image_anchor, instance_id){
                  alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
               }
            });

         });

  $(document).ready(function () {
                 $('#horizontalTab').easyResponsiveTabs({
                     type: 'default', //Types: default, vertical, accordion           
                     width: 'auto', //auto or any width like 600px
                     fit: true   // 100% fit in a container
                 });
             });

    // When the user scrolls down 20px from the top of the document, show the button
               window.onscroll = function() {scrollFunction()};

               function scrollFunction() {
                   if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                       document.getElementById("myBtn").style.display = "block";
                   } else {
                       document.getElementById("myBtn").style.display = "none";
                   }
               }

               // When the user clicks on the button, scroll to the top of the document
               function topFunction() {
                   document.body.scrollTop = 0;
                   document.documentElement.scrollTop = 0;
               }