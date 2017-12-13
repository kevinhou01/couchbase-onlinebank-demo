/* Brand Version="Version 1.2" */
$(document).ready(function(){
	$(".main_menu").append(

		'<li class="second"><a class="active_link_router active dropdown" title="" href="/index">Home Page</a>'+
		'</li>'+
		
		

		'<li class="second"><a class="active_link_router active dropdown" title="" href="/support">Support Page</a>'+
		'</li>'+
		
		

		'<li class="second"><a class="active_link_router active dropdown" title="" href="/services">Service Page</a>'+
		'</li>'+


		'<li class="second"><a class="active_link_router active dropdown" title="" href="/fundstransfer">Funds Transfer</a>'+

		'</li>'+
		
		'<li class="second"><a class="active_link_router active dropdown" title="" href="/aboutus">About Us</a>'+
		'</li>'
	
	);

	var info = 0;
	
	$(".main_menu li").hover(
		function(){
			$(this).find(".drop-menu").show();
		},
		function(){
			$(this).find(".drop-menu").hide();
		}
	);
	
	$(".drop-menu-large").hover(
	    function() {
	        if (info == 1) {
	            //add the second & third level menu items here.
	            lst = $(this).attr("lst");
	            tlst = $(this).attr("tlst");
	            displaySubMenu(1, lst, tlst, this);
	        }
	        if (info == 2) {
	            //add the second level menu items here.
	            lst = $(this).attr("lst");
	            displaySubMenu(2, lst, 0, this);
	        }
	    },
	    function() {
	        //leave the drop down menu
	        info = 0;
	        displaySubMenu(0, 0, 0, this);
	    }
	);
	
	$(".firstlink").mouseenter(
		function(event) {
		    if ($(this).attr("info") == "0") {
		        //show the first level menu items here.
		        displaySubMenu(0, this);
		    }else if ($(this).attr("info") == "1") {
		        //add the second & third level menu items here, 3rd with promo.
		        info = 1;
		        lst = $(this).attr("lst");
		        tlst = $(this).attr("tlst");
		        displaySubMenu(1, lst, tlst, this);
		    }else if ($(this).attr("info") == "2") {
		        //add the second menu items here.
		        info = 2;
		        lst = $(this).attr("lst");
		        displaySubMenu(2, lst, 0, this);
		    }else if ($(this).attr("info") == "3"){
		    	//add the second & third level menu items here, 3rd with text.
		    	info = 3;
		    	lst = $(this).attr("lst");
		        tlst = $(this).attr("tlst");
		        displaySubMenu(3, lst, tlst, this);
		    }
		    disabledEventPropagation(event);
		}
	);
	
	function disabledEventPropagation(event) {
	    if (event.stopPropagation) {
	        event.stopPropagation();
	    }
	    else if (window.event) {
	        window.event.cancelBubble = true;
	    }
	}
	
	$(".second").mouseenter(
		function(){
			var wholeLen = $(this).width();
			var leftLen = (wholeLen-13)*0.5+15;
			$(".div_submenu_top_dot").css("marginLeft",leftLen);
		}
	);
	
	function displaySubMenu(info, lst, tlst, object){
	   //style of top
	   $(".div_submenu_top").removeClass("drop-submenu-top").removeClass("drop-submenu-top2").removeClass("drop-submenu-top3").removeClass("drop-submenu-top3_2");
	   
	   //style of middle
	   $(".dorp-submenu_content").removeClass("drop-submenu").removeClass("drop-submenu2").removeClass("drop-submenu3").removeClass("drop-submenu3_2");
	   
	   //style of bottom
	   $(".div_drop_submenu_bottom").removeClass("drop-submenu-bottom").removeClass("drop-submenu-bottom2").removeClass("drop-submenu-bottom3").removeClass("drop-submenu-bottom3_2");
	   
	   $(".drop-submenu-right2-2,.drop-submenu-right2-3,.drop-submenu-right3").hide();
	   
	   $(".firstlink").removeClass("linkstate");
	   
	   //style of split line
	   $(".drop-submenu-split,.drop-submenu-split2").height(0).hide();
	   
	   if(info == 0){
	        //show the first level menu items here.
	        $(".div_submenu_top").addClass("drop-submenu-top");
	        $(".dorp-submenu_content").addClass("drop-submenu");
	        $(".div_drop_submenu_bottom").addClass("drop-submenu-bottom");
	   }else if(info == 1){
	        //add menu(second & third level)items here, third with promo.
	        $(object).addClass("linkstate");
	        $(".div_submenu_top").addClass("drop-submenu-top3");
	        $(".dorp-submenu_content").addClass("drop-submenu3");
	        $(".div_drop_submenu_bottom").addClass("drop-submenu-bottom3");
	        
	        $(".drop-submenu-right2-2[lst='"+lst+"']").show();
	        $(".drop-submenu-right3[tlst='"+tlst+"']").show();
	        var lineheight = $(".dorp-submenu_content").has(object).height();
			$(".drop-submenu-split").height(lineheight).show();
			$(".drop-submenu-split2").height(lineheight).show();
	   }else if(info == 2){
	        //add menu(second level) items here
	        $(object).addClass("linkstate");
	        $(".div_submenu_top").addClass("drop-submenu-top2");
	        $(".dorp-submenu_content").addClass("drop-submenu2");
	        $(".div_drop_submenu_bottom").addClass("drop-submenu-bottom2");
	        
	        $(".drop-submenu-right2-2[lst='"+lst+"']").show();
	        var lineheight = $(".dorp-submenu_content").has(object).height();
			$(".drop-submenu-split").height(lineheight).show();
	   }else if(info == 3){
	        //add menu(second & third level)items here, third with text link.
	        $(object).addClass("linkstate");
	        $(object).parents(".dorp-submenu_content").find(".drop-submenu-left2 a").addClass("linkstate");
	        $(".div_submenu_top").addClass("drop-submenu-top3_2");
	        $(".dorp-submenu_content").addClass("drop-submenu3_2");
	        $(".div_drop_submenu_bottom").addClass("drop-submenu-bottom3_2");
	        
	        $(".drop-submenu-right2-2[lst='"+lst+"']").show();
	        $(".drop-submenu-right2-3[tlst='"+tlst+"']").show();
	        var lineheight = $(".dorp-submenu_content").has(object).height();
			$(".drop-submenu-split").height(lineheight).show();
			$(".drop-submenu-split2").height(lineheight).show();
	   }
	}
	
	//keyboard event begin
	$("a.dropdown").keydown(function(e){
		if(e.keyCode == 13){
			$(this).parent().mouseenter();
			$(this).next().show();
		}else if(e.keyCode == 38){
			if($(this).next().css("display") == "block"){
				var links = $(this).next().find(".drop-menu-ul a");
				$(links).last().focus();
				
				return false;
			}
		}else if(e.keyCode == 40){
			if($(this).next().css("display") == "block"){
				var links = $(this).next().find(".drop-menu-ul a");
				$(links).first().focus();
				
				return false;
			}
		}
	});
	
	$(".drop-menu-ul a").keydown(function(e){
		if(e.keyCode == 13){
			$(this).mouseenter();
		}else if(e.keyCode == 39){
			if($(this).hasClass("linkstate")){
				$(this).parents(".dorp-submenu_content").find("div[lst='"+$(this).attr("lst")+"'] a").first().focus();
			}
			
			return false;
		}else if(e.keyCode == 38){
			var links = $(this).parents(".drop-menu-ul").find("a");
			if($(this).html() != $(links).first().html()){
				var prev = $(this).parent().prev().children();
				$(prev).focus();
			}else{
				$(links).last().focus();
			}
			
			return false;
		}else if(e.keyCode == 40){
			var links = $(this).parents(".drop-menu-ul").find("a");
			if($(this).html() != $(links).last().html()){
				var next = $(this).parent().next().children();
				$(next).focus();
			}else{
				$(links).first().focus();
			}
			
			return false;
		}else if(e.keyCode == 9){
			if($(this).html() == $(this).parents(".drop-menu-ul").find("a").last().html()){
				if(!$(this).parents(".drop-menu-ul").find("a").hasClass("linkstate")){
					$(this).parents(".drop-menu").hide();
					
					if($(this).parents(".second").find("a.dropdown").html() == $(".main_menu").find(".second").last().find("a.dropdown").html()){
						$(".breadcrumb").find("a").first().focus();
					}else{
						$(this).parents(".second").next().find("a.dropdown").focus();
					}
					
					info = 0;
		        	displaySubMenu(0, 0, 0, $(this).parents(".drop-menu"));
		        	
		        	return false;
				}
			}
		}
	});
	
	$(".drop-menu-ul2-2 a").keydown(function(e){
		if(e.keyCode == 38){
			var links = $(this).parents(".drop-menu-ul2-2").find("a");
			if($(this).html() != $(links).first().html()){
				var prev = $(this).parent().prev().children();
				$(prev).focus();
			}else{
				$(links).last().focus();
			}
			
			return false;
		}else if(e.keyCode == 40){
			var links = $(this).parents(".drop-menu-ul2-2").find("a");
			if($(this).html() != $(links).last().html()){
				var next = $(this).parent().next().children();
				$(next).focus();
			}else{
				$(links).first().focus();
			}
			
			return false;
		}else if(e.keyCode == 37){
			$(this).parents(".dorp-submenu_content").find(".drop-submenu-left2 .linkstate").focus();
			
			return false;
		}else if(e.keyCode == 39){
			$(this).parents(".dorp-submenu_content").find(".drop-submenu-right3 a").focus();
			$(this).parents(".dorp-submenu_content").find(".drop-submenu-right2-3 a").first().focus();
			
			return false;
		}else if(e.keyCode == 9){
			if($(this).html() == $(this).parents(".drop-menu-ul2-2").find("a").last().html()){
				if($(this).parents(".drop-menu").find(".drop-submenu-right3").css("display") != "block" && !$(this).parents(".drop-menu-ul2-2").find("a").hasClass("linkstate")){
					$(this).parents(".drop-menu").hide();
					
					$(this).parents(".second").next().find("a.dropdown").focus();
					
					info = 0;
		        	displaySubMenu(0, 0, 0, $(this).parents(".drop-menu"));
		        	
		        	return false;
				}
			}
		}else if(e.keyCode == 13){
			$(this).mouseenter();
			$(this).focus();
		}
	});
	
	$(".btn_next").keydown(function(e){
		if(e.keyCode == 37){
			$(this).parents(".dorp-submenu_content").find(".drop-submenu-right2-2 a").first().focus();
			
			return false;
		}else if(e.keyCode == 9){
			$(this).parents(".drop-menu").hide();
					
			$(this).parents(".second").next().find("a.dropdown").focus();
			
			info = 0;
        	displaySubMenu(0, 0, 0, $(this).parents(".drop-menu"));
        	
        	return false;
		}
	});
	
	$(".drop-menu-ul2-3 a").keydown(function(e){
		if(e.keyCode == 38){
			var links = $(this).parents(".drop-menu-ul2-3").find("a");
			if($(this).html() != $(links).first().html()){
				var prev = $(this).parent().prev().children();
				$(prev).focus();
			}else{
				$(links).last().focus();
			}
			
			return false;
		}else if(e.keyCode == 40){
			var links = $(this).parents(".drop-menu-ul2-3").find("a");
			if($(this).html() != $(links).last().html()){
				var next = $(this).parent().next().children();
				$(next).focus();
			}else{
				$(links).first().focus();
			}
			
			return false;
		}else if(e.keyCode == 37){
			$(this).parents(".dorp-submenu_content").find(".drop-submenu-right2-2 .linkstate").focus();
			
			return false;
		}else if(e.keyCode == 9){
			if($(this).html() == $(this).parents(".drop-menu-ul2-3").find("a").last().html()){
				$(this).parents(".drop-menu").hide();
				
				$(this).parents(".second").next().find("a.dropdown").focus();
				
				info = 0;
	        	displaySubMenu(0, 0, 0, $(this).parents(".drop-menu"));
	        	
	        	return false;
			}
		}
	});
});