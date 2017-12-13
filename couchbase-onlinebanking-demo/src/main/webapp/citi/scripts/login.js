$(document).ready(function(){
	
	
    $('.ico_login').click(function(){	
      if ($(".drop").is(':hidden')) {
        $(".drop").slideDown().animate({height:'250px'},{queue:false, duration:600, easing: 'easeOutBounce'});
      }
      else {
        $('.drop').slideUp();
      }
      return false;
    });
    $('.drop').click(function(e) {
      e.stopPropagation();
    });
    
    $('.ico_logout').click(function(){	
        if ($(".drop2").is(':hidden')) {
          $(".drop2").slideDown().animate({height:'50px'},{queue:false, duration:600, easing: 'easeOutBounce'});
        }
        else {
          $('.drop2').slideUp();
        }
        return false;
      });
    
    $('.drop2').click(function(e) {
        e.stopPropagation();
      });

});



