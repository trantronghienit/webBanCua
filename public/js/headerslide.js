 $(document).ready(function() {
     fadein_Mass();
 });

 function fadein_Mass() {
     setTimeout(function() {
         $('#logo .slogan').fadeOut(1000, function() {
             $('#logo .slogan').css('font-family', 'Vbutlong');
             setTimeout(function() {
                 $('#logo .slogan').fadeIn(2000);
                 $('#logo .slogan').html("Niềm Tin Vào Chất Lượng");
                 $('#logo .slogan').css('font-size', '20px');
                 $('#logo .slogan').css('font-family', '"Times New Roman", Times, serif');
                 $('#logo .slogan').css('font-style', 'oblique');

             }, 1000);
             fadein_Devotion();
         });
     }, 3000);
 }

 function fadein_Devotion() {
     setTimeout(function() {
         $('#logo .slogan').fadeOut(1000, function() {
             setTimeout(function() {
                 $('#logo .slogan').fadeIn(2000);
                 $('#logo .slogan').html("Chuyên Cung Cấp <span>CỬA NHỰA</span> và <span>CỬA NHÔM CAO CẤP</span>");
                 $('#logo .slogan').css('font-family', 'Arial');
                 $('#logo .slogan').css('font-size', '20px');
                 $('#logo .slogan').css('margin-top', '20px');
             }, 1000);
             fadein_Mass();
         });
     }, 3000);
 }