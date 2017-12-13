/* Brand Version="Version 1.2" */
/*
 * 	Easy Slider 1.7 - jQuery plugin
 *	written by Alen Grakalic	
 *	http://cssglobe.com/post/4004/easy-slider-15-the-easiest-jquery-plugin-for-sliding
 *
 *	Copyright (c) 2009 Alen Grakalic (http://cssglobe.com)
 *	Dual licensed under the MIT (MIT-LICENSE.txt)
 *	and GPL (GPL-LICENSE.txt) licenses.
 *
 *	Built for jQuery library
 *	http://jquery.com
 *
 */
 
/*
 *	markup example for $("#slider").easySlider();
 *	
 * 	<div id="slider">
 *		<ul>
 *			<li><img src="images/01.jpg" alt="" /></li>
 *			<li><img src="images/02.jpg" alt="" /></li>
 *			<li><img src="images/03.jpg" alt="" /></li>
 *			<li><img src="images/04.jpg" alt="" /></li>
 *			<li><img src="images/05.jpg" alt="" /></li>
 *		</ul>
 *	</div>
 *
 */

(function($) {

	$.fn.easySlider = function(options){
	  
		// default configuration properties
		var defaults = {			
			prevId: 		'prevBtn',
			prevText: 		'Previous',
			nextId: 		'nextBtn',	
			nextText: 		'Next',
			controlsShow:	true,
			controlsBefore:	'',
			controlsAfter:	'',	
			controlsFade:	true,
			firstId: 		'firstBtn',
			firstText: 		'First',
			firstShow:		false,
			lastId: 		'lastBtn',	
			lastText: 		'Last',
			lastShow:		false,				
			vertical:		false,
			speed: 			1000,
			auto:			false,
			pause:			8000,
			continuous:		false, 
			numeric: 		false,
			numericId: 		'controls'
		}; 
		
		var options = $.extend(defaults, options);  
				
		this.each(function() {  
			var obj = $(this); 				
			var s = $("li", obj).length;
			var w = $("li", obj).width(); 
			var h = $("li", obj).height(); 
			var clickable = true;
			obj.width(w); 
			obj.height(h); 
			obj.css("overflow","hidden");
			var ts = s-1;
			var t = 0;
			$("ul", obj).css('width',s*w);			
			
			if(options.continuous){
				$("ul", obj).prepend($("ul li:last-child", obj).clone().css("margin-left","-"+ w +"px"));
				$("ul", obj).append($("ul li:nth-child(2)", obj).clone());
				$("ul", obj).css('width',(s+1)*w);
			};				
			
			if(!options.vertical) $("li", obj).css('float','left');
								
			if(options.controlsShow){
				var html = options.controlsBefore;	
			 	
			 	html += ' <span id="' + options.prevId + '"><a href=\"javascript:void(0);\"><img src="citi/images/assets/images/btn/left_btn.png" alt="Previous" title="Previous"/></a></span>';
				if(options.numeric){
					html += '<ol id="'+ options.numericId +'"></ol>';
				} //else {
				    //debugger;
					if(options.firstShow) html += '<span id="'+ options.firstId +'"><a href=\"javascript:void(0);\">'+ options.firstText +'</a></span>';
					//html += ' <span id="'+ options.prevId +'"><a href=\"javascript:void(0);\">'+ options.prevText +'</a></span>';
					//html += ' <span id="'+ options.nextId +'"><a href=\"javascript:void(0);\">'+ options.nextText +'</a></span>';
                	html += ' <span id="' + options.nextId + '"><a href=\"javascript:void(0);\"><img src="citi/images/assets/images/btn/right_btn.png" alt="Next" title="Next"/></a></span>';
					if(options.lastShow) html += ' <span id="'+ options.lastId +'"><a href=\"javascript:void(0);\">'+ options.lastText +'</a></span>';				
				//};
			 
			 
				html += options.controlsAfter;						
				$(obj).after(html);										
			};
			
			if(options.numeric){									
				for(var i=0;i<s;i++){						
					$(document.createElement("li"))
						.attr('id',options.numericId + (i+1))
						//.html('<a rel='+ i +' href=\"javascript:void(0);\">'+ (i+1) +'</a>')
						.html('<a rel=' + i + ' href=\"javascript:void(0);\"><img alt="slider '+ (i+1) +'" title="slider'+ (i+1) +'" src="citi/images/assets/images/btn/blue_btn.png"/></a>')
						.appendTo($("#"+ options.numericId))
						.click(function(){
						    animate($("a",$(this)).attr('rel'),true);
							setCurrent(t);
						}); 												
				};							
			}// else {
				$("a","#"+options.nextId).click(function(){	
					//debugger;
					animate("next",true);
				});
				$("a","#"+options.prevId).click(function(){	
					//debugger;
					animate("prev",true);				
				});	
				$("a","#"+options.firstId).click(function(){		
					animate("first",true);
				});				
				$("a","#"+options.lastId).click(function(){		
					animate("last",true);				
				});				
			//};
			
			function setCurrent(i){
			    //debugger;
				i = parseInt(i)+1;
				$("li", "#" + options.numericId).removeClass("current");
                $("li", "#" + options.numericId).find("img").attr("src","citi/images/assets/images/btn/blue_btn.png");
                $("li#" + options.numericId + i).addClass("current");
                $("li#" + options.numericId + i).find("img").attr("src","citi/images/assets/images/btn/white_btn.png");
				
				$("#slider1prev a").removeClass("prev_empty");
				if($("#slider1prev a").find("img").attr("hoverFlag") != "1"){
                	$("#slider1prev a").find("img").attr("src","citi/images/assets/images/btn/left_btn.png");
                }
                $("#slider1next a").removeClass("next_empty");
                if($("#slider1next a").find("img").attr("hoverFlag") != "1"){
                	$("#slider1next a").find("img").attr("src","citi/images/assets/images/btn/right_btn.png");
                }
				if(i == 1){
				    $("#slider1prev a").addClass("prev_empty");
				    $("#slider1prev a").find("img").attr("src","citi/images/assets/images/btn/left_btn_empty.png");
				}
				if(i == $("li", obj).length){
				    $("#slider1next a").addClass("next_empty");
				    $("#slider1next a").find("img").attr("src","citi/images/assets/images/btn/right_btn_empty.png");
				}								 
			};
			
			function adjust(){
				if(t>ts) t=0;		
				if(t<0) t=ts;	
				if(!options.vertical) {
				    $("ul", obj).css("margin-left", (parseInt(t) * w * -1));
				} else {
					$("ul", obj).css("margin-left", (parseInt(t) * h * -1));
				}
				clickable = true;
				//debugger;
				//var flag=parseInt(t)+t;
				//if(options.numeric) 
				 setCurrent(t);
			};
			
			function animate(dir,clicked){
			    //debugger;
				if (clickable){
					clickable = false;
					var ot = t;	
					switch(dir){
						case "next":
						    t = (ot >= ts) ? (options.continuous ? parseInt(t) + 1 : ts) : parseInt(t) + 1;						
							break; 
						case "prev":
							t = (t<=0) ? (options.continuous ? parseInt(t)-1 : 0) : parseInt(t)-1;
							break; 
						case "first":
							t = 0;
							break; 
						case "last":
							t = ts;
							break; 
						default:
							t = dir;
							break; 
					};
					var diff = Math.abs(ot-parseInt(t));
					var speed = diff*options.speed;						
					if(!options.vertical) {
						p = (t*w*-1);
						$("ul",obj).animate(
							{ marginLeft: p }, 
							{ queue:false, duration:speed, complete:adjust }
						);
						$("ul",obj).find("a").attr("tabindex","-1");
						var a_tab = $("ul",obj).find("li").get(t);				
						$(a_tab).find("a").removeAttr("tabindex");
					} else {
						p = (t*h*-1);
						$("ul",obj).animate(
							{ marginTop: p }, 
							{ queue:false, duration:speed, complete:adjust }
						);					
					};
					
					if(!options.continuous && options.controlsFade){					
						if(t==ts){
						    //debugger;
							//$("a","#"+options.nextId).hide();
							//$("a","#"+options.lastId).hide();
							
							$("a","#"+options.nextId).addClass("next_empty");
							$("a","#"+options.nextId).find("img").attr("src","citi/images/assets/images/btn/right_btn_empty.png");
				            $("a","#"+options.lastId).addClass("next_empty");
						} else {
							$("a","#"+options.nextId).removeClass("next_empty");
							if($("#slider1next a").find("img").attr("hoverFlag") != "1"){
                            	$("a", "#" + options.nextId).find("img").attr("src","citi/images/assets/images/btn/right_btn.png");
                            }
				            $("a","#"+options.lastId).removeClass("next_empty");
							$("a","#"+options.nextId).show();
							$("a","#"+options.lastId).show();					
						};
						if(t==0){
							//$("a","#"+options.prevId).hide();
							//$("a","#"+options.firstId).hide();
				            $("a","#"+options.prevId).addClass("prev_empty");
				            $("a","#"+options.prevId).find("img").attr("src","citi/images/assets/images/btn/left_btn_empty.png");
				            $("a","#"+options.firstId).addClass("prev_empty");	
						} else {
							//$("a","#"+options.prevId).show();
							//$("a","#"+options.firstId).show();
				            $("a","#"+options.prevId).removeClass("prev_empty");
				            if($("#slider1prev a").find("img").attr("hoverFlag") != "1"){
                            	$("a", "#" + options.prevId).find("img").attr("src","citi/images/assets/images/btn/left_btn.png");
                            }
				            $("a","#"+options.firstId).removeClass("prev_empty");
						};					
					};				
					
					if(clicked) clearTimeout(timeout);
					
					if(options.auto){; //&& dir=="next"&& !clicked
						timeout = setTimeout(function(){
							animate("next",false);
						},diff*options.speed+options.pause);
					};
			
				};
				
			};
			// init
			var timeout;
			if(options.auto){;
				timeout = setTimeout(function(){
					animate("next",false);
				},options.pause);
			};		
			
			if(options.numeric) setCurrent(0);
		
			if(!options.continuous && options.controlsFade){					
				//$("a","#"+options.prevId).hide();
				//$("a","#"+options.firstId).hide();
				$("a","#"+options.prevId).addClass("prev_empty");
				$("a","#"+options.prevId).find("img").attr("src","citi/images/assets/images/btn/left_btn_empty.png");
				$("a","#"+options.firstId).addClass("prev_empty");			
			};				
			
		});
	  
	};

})(jQuery);



