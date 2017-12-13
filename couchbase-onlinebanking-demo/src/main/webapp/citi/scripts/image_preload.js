/* Brand Version="Version 1.2" */
(function($) {
    var cache = [];
    // Arguments are image paths relative to the current page.
    $.preLoadImages = function() {
        var args_len = arguments.length;
        for (var i = args_len; i--; ) {
            var cacheImage = document.createElement('img');
            cacheImage.src = arguments[i];
            cache.push(cacheImage);
        }
    }
})(jQuery)

 $(document).ready(function(){
    jQuery.preLoadImages("../images/1_top_dot.png");
	jQuery.preLoadImages("../images/1_top.png");
	jQuery.preLoadImages("../images/1_mid.png");
	jQuery.preLoadImages("../images/1_bottom.png");
	jQuery.preLoadImages("../images/2_top.png");
	jQuery.preLoadImages("../images/2_mid.png");
	jQuery.preLoadImages("../images/2_bottom.png");
	jQuery.preLoadImages("../images/3_top.png");
	jQuery.preLoadImages("../images/3_mid.png");
	jQuery.preLoadImages("../images/3_bottom.png");
	jQuery.preLoadImages("../images/ip.jpg");
});