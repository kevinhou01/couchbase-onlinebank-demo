<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page import="com.kevintest.sample.domain.*"%>

<%

Account acc = (Account) session.getAttribute("account");
if(acc!=null){
	String lastview = acc.getLastview();
	if(!"index".equals(lastview))
		response.sendRedirect(lastview);
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="Keywords" content="Citi" />
    <meta name="Description" content="Citi" />
    <meta name="brand_version" content="Version 1.2"/>
    <title>Online Banking Demo</title>
    
    <link rel="stylesheet" type="text/css" href="citi/css/jquery.jscrollpane.css" />
    <link type="text/css" rel="stylesheet" media="all" href="citi/css/global.css?o" />
    <link type="text/css" rel="stylesheet" media="all" href="//www.citigroup.net/citinetui/css/jquery.autocomplete.css" />
	<link rel="stylesheet" type="text/css" href="citi/css/login.css"/>
    <script type="text/javascript" src="citi/scripts/jquery-1.7.1.js?o"></script>
	<script type="text/javascript" src="citi/scripts/image_preload.js"></script>
	<link type="text/css" rel="stylesheet" href="citi/css/menu.css" />
	<script type="text/javascript" src="citi/scripts/menu.js"></script>
	<script type="text/javascript" src="citi/scripts/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="citi/scripts/jquery.jscrollpane.min.js"></script>
		
	<script type="text/javascript" src="citi/scripts/login.js"></script>
	<script type="text/javascript" src="citi/scripts/jquery.easing.1.3.js"></script>

	
	
    <script type="text/javascript" src="//www.citigroup.net/citinetui/dynjs/cis.js"></script>
    
    <meta name="Region" content="" />
    <meta name="Country" content="" />
    <meta name="City" content="" />
    <meta name="Building" content="" />
    <meta name="Employee Type" content="" />
    <meta name="Job Function" content="" />
    <meta name="Job Family" content="" />
    <meta name="Job Level" content="" />
    <meta name="Language" content="" />
    <meta name="Department" content="" />
    <meta name="HR 2" content=" " />
    <meta name="HR 3" content=" " />
    <meta name="HR 4" content=" " />
    <meta name="HR 5" content=" " />
    <meta name="HR 6" content=" " />
    <meta name="Date Created" content="" />
    <meta name="Retention Period" content="" />
    <meta name="Date Modified" content="" />
    <meta name="Security" content="" />
    <meta name="English Content" content="" />
    <meta name="Content Type" content="" />
    <!-- ************* End Search Taxonomy ************** -->
</head>
<body class="internal_view">
<a href="#pagetitle" class="skipNavLink">Skip Navigation</a>
    <div id="pagecontainer">
        <div id="wrapper">
            <div id="header">
           
			<script type="text/javascript">
				//<![CDATA[
				var amc=amc||{};if(!amc.on){amc.on=amc.call=function(){}};
				document.write("<scr"+"ipt type=\"text/javascript\" src=\"//www.adobetag.com/d2/v2/ZDItY2l0aWNvcnBvcmF0ZS00MTAxLTcyNi0=/amc.js\"></sc"+"ript>");
				//]]>
            </script>
	
            <div class="top_bar">
                <div class="search_wrapper_js">
                    <div id="searchFieldContainer"></div>                    
                </div>
                <ul class="ul_top_nav_link">
                    <li class="selectlanguage" id="li_flag"><a id="a_lan" class="lan" href="#" title="Language">
                        <span>Language</span>
                        <img alt="over" src="citi/images/assets/images/icn/global_arr_over.png" style="vertical-align: middle;" />
                    </a>
                        <br />
                        <ul id="ul_flag_sub" style="visibility: hidden;">
                            <li><a href="#" >English</a></li>
                            <li><a href="#" >Français</a></li>
                            <li><a href="#" >Español</a></li>
                            <li><a href="#" >Français</a></li>
                            <li><a href="#" >Nederlands</a></li>
                            <li><a href="#" >Deutsch</a></li>
                            <li><a href="#" >Bokmål</a></li>
                            <li><a href="#" >Svensk</a></li>
                            <li><a href="#" >中文(简体)</a></li>
                            <li><a href="#" >日本語</a></li>
                        </ul>
                    </li>
                    <li class="middlelink">|</li>
                    <li class="helplink"><a href="#" title="Quick Reference">Quick Reference</a></li>
                </ul>
            </div>
            <div class="rounded_box">
                <div id="center">
                    <div id="center_cont">
                        <div class="user_login_info">
                        </div>
                        <h1 class="logo">
                            <span class="brandCentral">
                                    Online Banking Demo
                            </span>
                            <a href="#" class="a_logo"><img src="citi/images/global_header_logo.png" alt="Citi" title="Citi"/></a>
                        </h1>
						<ul class="main_menu"></ul>
                        <ul class="user_actions">
                            <li class="logonlink">
                            <%if(acc==null){ %>
                            <a class="ico_login" title="" href="#" id="link">
                                Sign In 
                            </a>
                            
                            <%}else{ %>
     
       						<a href="#" id="link" class="ico_logout">
       						<%=acc.getUsername()%>
       						</a> 
     
     						<%} %>
                          	<form class="drop" id="loginform" action="login" method="post">
								<input type="hidden" name="index" id="index" value="index"/>
								<label for="name" class="inputlable">Username:</label>
								<input type="text" name="username" class="logininput"/>
								<label for="password" class="inputlable">Password:</label>
								<input type="password" name="password" class="logininput"/>
								<input type="submit" class="submit" value="Sign In" />
							</form>
							
							 <form class="drop2" id="logoutform" action="logout" method="post">
            					<input type="submit" class="submit" value="Sign Out" />
        					</form>
                           		 
							</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div style="clear: both">
            </div>
        </div>
    
            <!-- main content area w/ 3 column code snippet holders -->
            <!-- change class to content_bg to show -->
            <div id="content" class="feature_bg content_bg content_noleft">
                <div class="col_2 col2_noleft" id="PageContentBlock">
                    <div class="col_central">
                        <div class="breadcrumb">
                            &nbsp;</div>
                        <div class="col_2_content">
                            <div class="clear-block">
                                <!-- Start Main Content -->
                                <div id="slider_home" class="slider_canvas">
                                    <ul>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider1_leftnav">
                                                <span class="home_title_text">
                                                    <!--<img src="citi/images/story1.png" alt="Image description alt text"/>-->
                                                    Promotional message one </span><span class="home_title_desc"><a href="/" class="learnmorelinks">
                                                        Learn more > </a></span>
                                            </div>
                                        </li>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider2_leftnav">
                                                <span class="home_title_text">
                                                    <!--<img src="citi/images/story2.png" alt="Image description alt text"/>-->
                                                    Promotional message two </span><span class="home_title_desc"><a href="/" class="learnmorelinks">
                                                        Learn more > </a></span>
                                            </div>
                                        </li>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider3_leftnav">
                                                <span class="home_title_text">
                                                    <!--<img src="citi/images/story3.png" alt="Image description alt text"/>-->
                                                    Promotional message three </span><span class="home_title_desc"><a href="/" class="learnmorelinks">
                                                        Learn more > </a></span>
                                            </div>
                                        </li>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider4_leftnav">
                                                <span class="home_title_text">
                                                    <!--<img src="citi/images/story4.png" alt="Image description alt text"/>-->
                                                    Promotional message four </span><span class="home_title_desc"><a href="/" class="learnmorelinks">
                                                        Learn more > </a></span>
                                            </div>
                                        </li>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider5_leftnav">
                                                <span class="home_title_text">
                                                    <!--<img src="citi/images/story5.png" alt="Image description alt text"/>-->
                                                    Promotional message five </span><span class="home_title_desc"><a href="/" class="learnmorelinks">
                                                        Learn more > </a></span>
                                            </div>
                                        </li>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider6_leftnav">
                                                <span class="home_title_text">
                                                    <!--<img src="citi/images/story5.png" alt="Image description alt text"/>-->
                                                    Promotional message six </span><span class="home_title_desc"><a href="/" class="learnmorelinks">
                                                        Learn more > </a></span>
                                            </div>
                                        </li>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider7_leftnav">
                                                <div class="landing_left_text">
                                                </div>
                                                <div class="landing_right_text">
                                                    <div class="landing_right_text_title">Promotional message seven</div> <span class="landing_right_text_content">
                                                        Ped ut velest eium quae por sit moluptur, tet molorep udipsum nimendi officillut
                                                        aut pos cus aribus</span> <a class="landing_right_text_link learnmorelinks seven_link" href="#">
                                                            Learn more ></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider8_leftnav">
                                                <div class="landing_left_text">
                                                </div>
                                                <div class="landing_right_text">
                                                    <div class="landing_right_text_title">Promotional message eight</div> <span class="landing_right_text_content">
                                                        Ped ut velest eium quae por sit moluptur, tet molorep udipsum nimendi officillut
                                                        aut pos cus aribus</span> <a class="landing_right_text_link learnmorelinks eight_link" href="#">Learn more ></a>
                                                </div>
                                            </div>
                                        </li>
                                         <li class="feature_sub_col_slider">
                                            <div class="landing_slider9_leftnav">
                                            	<iframe width="442" height="248" style="float:left" frameborder="0" scrolling="no" src=""></iframe>
                                                <div class="landing_right_text">
                                                    <div class="landing_right_text_title">Promotional message nine</div> <span class="landing_right_text_content">
                                                        Ped ut velest eium quae por sit moluptur, tet molorep udipsum nimendi officillut
                                                        aut pos cus aribus</span> <a class="landing_right_text_link learnmorelinks seven_link" href="#">
                                                            Learn more ></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="feature_sub_col_slider">
                                            <div class="landing_slider10_leftnav">
												<embed width="442" height="248" style="float:left;" id="sliderVideo10" type="application/x-shockwave-flash" src="" allowscriptaccess="always" allowfullscreen="true" wmode="transparent"/>
                                                <div class="landing_right_text">
                                                    <div class="landing_right_text_title">Promotional message ten</div> <span class="landing_right_text_content">
                                                        Ped ut velest eium quae por sit moluptur, tet molorep udipsum nimendi officillut
                                                        aut pos cus aribus</span> <a class="landing_right_text_link learnmorelinks eight_link" href="#">Learn more ></a>
                                                </div>
                                            </div>
                                        </li>
                                        
                                    </ul>
                                </div>
                                <div id="slider_home_panel">
                                    <div id="featureboxhotTitle">
                                        
                                    </div>
                                    <div id="featureboxThum">
                                        <div id="featureboxhotPic" class="hotPic">
                                            <div id="JQ_slide" class="JQ-slide">
                                                <div class="JQ-slide-nav">
                                                    <a id="chip_prev" class="prev" href="javascript:void(0);"><img src="citi/images/assets/images/btn/left_arrow_feature.png" alt="prev" title="prev"/></a>
                                                    <a id="chip_next" class="next" href="javascript:void(0);"><img src="citi/images/assets/images/btn/right_arrow_feature.png" alt="next" title="next"/></a>
                                                </div>
                                                <div class="wrap">
                                                    <ul id="ul_slider" class="JQ-slide-content imgList">
                                                        <li id="1" class="1st_lst">
                                                            <div id="slidebox1" class="slidebox" info="0">
                                                                <div class="slidecontent slidekey1 selectboxed">
                                                                    <div class="slidetitle">
                                                                        One
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="2" class="1st_lst">
                                                            <div id="slidebox2" class="slidebox" info="1">
                                                                <div class="slidecontent slidekey2">
                                                                    <div class="slidetitle">
                                                                        Two
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="3" class="1st_lst">
                                                            <div id="slidebox3" class="slidebox" info="2">
                                                                <div class="slidecontent slidekey3">
                                                                    <div class="slidetitle">
                                                                        Three
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="4" class="1st_lst">
                                                            <div id="slidebox4" class="slidebox" info="3">
                                                                <div class="slidecontent slidekey4">
                                                                    <div class="slidetitle">
                                                                        Four
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="5" class="1st_lst">
                                                            <div id="slidebox5" class="slidebox" info="4">
                                                                <div class="slidecontent slidekey5">
                                                                    <div class="slidetitle">
                                                                        Five
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="6" class="2nd_lst">
                                                            <div id="slidebox6" class="slidebox" info="5">
                                                                <div class="slidecontent slidekey6">
                                                                    <div class="slidetitle">
                                                                        Six
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="7" class="2nd_lst">
                                                            <div id="slidebox7" class="slidebox" info="6">
                                                                <div class="slidecontent slidekey7">
                                                                    <div class="slidetitle">
                                                                        Seven
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="8" class="2nd_lst">
                                                            <div id="slidebox8" class="slidebox" info="7">
                                                                <div class="slidecontent slidekey8">
                                                                    <div class="slidetitle">
                                                                        Eight
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="9" class="2nd_lst">
                                                            <div id="slidebox9" class="slidebox" info="8">
                                                                <div class="slidecontent slidekey9">
                                                                    <div class="slidetitle">
                                                                        Nine
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li id="10" class="2nd_lst">
                                                            <div id="slidebox10" class="slidebox" info="9">
                                                                <div class="slidecontent slidekey10">
                                                                    <div class="slidetitle">
                                                                        Ten
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="link_heading_desc">
	                                <div id="div_tabs" class="div_tabs">
	                                     <script type="text/javascript">
	                                            $(document).ready(function() {
	                                                var current = 1;
	                                                $(".tab_header_content").eq(current-1).addClass("selected");
	                                                $(".tab_title").eq(current-1).addClass("selected");                                                
	                                                $(".tab_body_content").eq(current-1).show();
	                                                
	                                                $(".tab_header_content").click(function(){
	                                                    current = $(this).index()+1;
	                                                    $(".tab_header_content").removeClass("selected");
	                                                    $(".tab_title").removeClass("selected");
	                                                    $(".tab_body_content").hide();
	                                                    
	                                                    $(".tab_title").eq(current-1).addClass("selected");
	                                                    $(".tab_body_content").eq(current-1).show();
	                                                    $(".tab_header_content").eq(current-1).addClass("selected");
	                                                });
	                                            });
	                                     </script>
	                                     <div id="tab_header">
	                                        <div id="tab_header1" class="tab_header_content">
	                                            <div class="tab_empty first_tab"></div>
	                                            <div class="tab_title"><a href="javascript:void(0);">Tab Heading One</a></div>
	                                        </div>
	                                        <div id="tab_header2" class="tab_header_content">
	                                            <div class="tab_empty"></div>
	                                            <div class="tab_title "><a href="javascript:void(0);">Tab Heading Two</a></div>
	                                        </div>
	                                        <div id="tab_header3" class="tab_header_content">
	                                            <div class="tab_empty"></div>
	                                            <div class="tab_title "><a href="javascript:void(0);">Tab Heading Three Showing a Long Title</a></div>
	                                        </div>
	                                        <div id="tab_header4" class="tab_header_content">
	                                            <div class="tab_empty"></div>
	                                            <div class="tab_title "><a href="javascript:void(0);">Tab Four</a></div>
	                                        </div>
	                                        <div id="tab_header5" class="tab_header_content">
	                                            <div class="tab_empty"></div>
	                                            <div class="tab_title "><a href="javascript:void(0);">Tab Five</a></div>
	                                        </div>
	                                     </div>                                
	                                     <div id="tab_body">
	                                        <div id="tab_body_content1" class="tab_body_content">
	                                           <div class="tab_body_left">
	                                                <div class="tab_img" id="tab_img1" title="Image description alt text"></div>
	                                                <div class="tab_img" id="tab_img2" title="Image description alt text"></div>
	                                           </div>
	                                           <div class="tab_body_center">
	                                                <div class="tabcontent">                                                
	                                                    <div class="tabheading_title">
	                                                        <a href="#">Linking Content Heading</a>
	                                                        <br />
	                                                        <span>Month 1, 2013</span>
	                                                    </div>
	                                                    <div class="tabheading_desc">
	                                                        Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                        molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                        ut ipid mincimi, cuptium
	                                                    </div>         
	                                                    <a href="#" title="Read more">Read more ></a>                                       
	                                                </div>
	                                                <div class="tabcontent2">
	                                                    <div class="tabheading_title">
	                                                        <a href="#">Linking Content Heading</a>
	                                                        <br />
	                                                        <span>Month 1, 2013</span>
	                                                    </div>
	                                                    <div class="tabheading_desc">
	                                                        Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                        molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                        ut ipid mincimi, cuptium
	                                                    </div>
	                                                    <a href="#" title="Read more">Read more ></a>
	                                                </div>
	                                           </div>
	                                           <div class="tab_body_right">
	                                                <div class="tab_body_right_links">
	                                                    <a href="#">Linking Content Heading One</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tab_body_right_links">
	                                                    <a href="#">Linking Content Heading Two</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tab_body_right_links">
	                                                    <a href="#">Linking Content Heading Three</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tab_body_right_links">
	                                                    <a href="#">Linking Content Heading Four</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tab_body_right_links">
	                                                    <a href="#">Linking Content Heading Five</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tab_body_right_more_links">
	                                                    <a href="#">View All News</a>
	                                                </div>
	                                           </div>
			                                </div>
			                                <div id="tab_body_content2" class="tab_body_content">
	                                           <div class="tab_body_left">
	                                                <div class="tabheading_title">
	                                                    <a href="#">Linking Content Heading</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tabheading_desc">
	                                                    Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                    molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                    ut ipid mincimi, cuptium
	                                                </div>
	                                                <a href="#" title="Read more">Read more ></a>
	                                                <div class="tabheading_empty"></div>
	                                                <div class="tabheading_title">
	                                                    <a href="#">Linking Content Heading</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tabheading_desc">
	                                                    Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                    molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                    ut ipid mincimi, cuptium
	                                                </div>
	                                                <a href="#" title="Read more">Read more ></a>
	                                           </div>
	                                           <div class="tab_body_center">
	                                                <div class="tabheading_title">
	                                                    <a href="#">Linking Content Heading</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tabheading_desc">
	                                                    Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                    molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                    ut ipid mincimi, cuptium
	                                                </div>
	                                                <a href="#" title="Read more">Read more ></a>
	                                           </div>
	                                           <div class="tab_body_right">
	                                                <div class="tabheading_title">
	                                                    <a href="#">Linking Content Heading</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tabheading_desc">
	                                                    Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute.
	                                                </div>
	                                                <a href="#" title="Read more">Read more ></a>
	                                                <div class="tabheading_empty"></div>
	                                                <div class="tabheading_title">
	                                                    <a href="#">Linking Content Heading</a>
	                                                    <br />
	                                                    <span>Month 1, 2013</span>
	                                                </div>
	                                                <div class="tabheading_desc">
	                                                    Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                    molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                    ut ipid mincimi, cuptium
	                                                </div>
	                                                <a href="#" title="Read more">Read more ></a>
	                                           </div>
	                                        </div>
			                                <div id="tab_body_content3" class="tab_body_content">
			                                   <div class="tab_body_left">
			                                        <div class="tabheading_title">
			                                        Citi Global News
			                                        </div>
			                                        <div class="tabheading_img" title="Image description alt text" alt="Image description alt text"></div>
			                                        <div class="tabheading_desc">
			                                        Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                ut ipid mincimi, cuptium
			                                        </div>
			                                        <a href="#" title="Read more">Read more ></a>
	                                           </div>
	                                           <div class="tab_body_center">
	                                                <div class="tabheading_title">
			                                        North America
			                                        </div>
			                                        <div class="tabheading_img" title="Image description alt text" alt="Image description alt text"></div>
			                                        <div class="tabheading_desc">
			                                        Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                ut ipid mincimi, cuptium
			                                        </div>
			                                        <a href="#" title="Read more">Read more ></a>
	                                           </div>
	                                           <div class="tab_body_right">
	                                                <div class="tabheading_title">
			                                        Corporate Center
			                                        </div>
			                                        <div class="tabheading_img" title="Image description alt text" alt="Image description alt text"></div>
			                                        <div class="tabheading_desc">
			                                        Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                ut ipid mincimi, cuptium
			                                        </div>
			                                        <a href="#" title="Read more">Read more ></a>
	                                           </div>
			                                </div>
			                                <div id="tab_body_content4" class="tab_body_content">
			                                    <div class="tab_body_left">
			                                        <div class="tabheading_title">
			                                        <a href="#">Linking Content Heading</a>
			                                        </div>
			                                        <div class="tabheading_desc">
			                                        Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                ut ipid mincimi, cuptium
			                                        </div>
			                                        <a href="#" title="Read more">Read more ></a>
	                                           </div>
	                                           <div class="tab_body_right">
	                                                <div class="tabheading_title">
			                                        <a href="#">Linking Content Heading</a>
			                                        </div>
			                                        <div class="tabheading_desc">
			                                        Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                ut ipid mincimi, cuptium
			                                        </div>
			                                        <a href="#" title="Read more">Read more ></a>
	                                           </div>
			                                </div>
			                                <div id="tab_body_content5" class="tab_body_content">
			                                    <div class="tab_body">
	                                                <div class="tabheading_title">
			                                        <a href="#">Linking Content Heading</a>
			                                        </div>
			                                        <div class="tabheading_desc">
			                                        Aceatur aut lam quossimi, quis est, omniandandit etur re ommolup tiaecus aute presto
	                                                molor aut di tessunt lis et optium fugit optio. Seditaquam vel idi acepedis fugit,
	                                                ut ipid mincimi, cuptium
			                                        </div>
			                                        <a href="#" title="Read more">Read more ></a>
	                                           </div>
			                                </div>
			                            </div>
	                                </div>
	                            </div>

                                <!-- End Main Content -->
                                <!-- Start shared Links -->
                                <div class="share_link">
                                </div>
                                <!-- End shared Links -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col_3 col_right" id="RightNavBlock">
                    <div class="col_3_bg col_3_rightnav">                
						
						<div class="rightnav_ad">
                            <div class="rightnav_ad_left" title="Image description alt text">
                                
                            </div>
                            <div class="rightnav_ad_right">
                                <div class="rightnav_ad_right_title">Title of Tile Ad Line Two<br />Line Three</div>
                                <div class="rightnav_ad_right_link"><a href="#" title="Read more">Read more ></a></div>
                            </div>
                        </div>
                        
                        <div class="rightnav_ad">
                            <div class="rightnav_ad_left2" title="Image description alt text">
                                
                            </div>
                            <div class="rightnav_ad_right">
                                <div class="rightnav_ad_right_title">Title of Tile Ad Line Two<br />Line Three</div>
                                <div class="rightnav_ad_right_link"><a href="#" title="Read more">Read more ></a></div>
                            </div>
                        </div>           
                </div>
                    <div class="right_blue_bottom">
                    </div>
                </div>
            </div>
            <!-- End main content area -->
            <!-- Footer -->
            <div id="footer">
                <div class="nav_bar">
                    <ul>
                        <li style="margin-left: 0px;"><a href="/" title="Citi">Citi</a></li>
                        <li>|</li>
                        <li><a href="/" title="Legal link">Legal link</a></li>
                        <li>|</li>
                        <li><a href="/" title="Site Help Link">Site Help Link</a></li>
                        <li>|</li>
                        <li><a href="/" title="Corporate Quick Reference Link">Corporate Quick Reference Link</a></li>
                        <li>|</li>
                        <li><a href="/" title="Contact">Contact</a></li>
                        <li>
							
							<!-- MAIN OL STYLESHEET -->
							<link rel="stylesheet" type="text/css" href="citi/css/oo_style.css" />
							<!-- MAIN OL ENGINE -->
							<script language="javascript" type="text/javascript" charset="windows-1252" src="citi/scripts/oo_engine.min.js"></script>
							<!-- FEEDBACK CONFIGURATION -->
							<script language="javascript" type="text/javascript" charset="windows-1252" src="citi/scripts/oo_conf.js"></script>
							<noscript>This JavaScript enables OnlineOpinion, a method for collecting secure feedback data.</noscript>
							<!-- END: OnlineOpinion v5.6.5 -->
							
							<!-- Include these files just before the close body </body> tag -->
							
							<!-- INLINE FEEDBACK LINK EXAMPLE-->
							<a href="javascript:void(0);" onclick="oo_feedback.show()"><img src="citi/images/oo_icon.gif" alt="" border="0" title="Feedback"/> Feedback</a>
	                    </li>
                    </ul>
                </div>
                <div class="logo" title="Citi">
                    Site legal copy here</div>
                <div class="copyrighttext">
                    &copy; 2013 Citigroup Inc.
                </div>
            </div>
        </div>
    </div>
    <!-- scripts needed on page -->

    <script type="text/javascript" src="citi/scripts/featureboxSlider.js"></script>

    <script type="text/javascript">
    	function getBrowser() {
	         var OsObject = "";
	         if (navigator.userAgent.indexOf("MSIE") > 0) {
	             return "MSIE";
	         } else if (isFirefox = navigator.userAgent.indexOf("Firefox") > 0) {
	             return "Firefox";
	         } else if (isSafari = navigator.userAgent.indexOf("Safari") > 0) {
	             return "Safari";
	         } else if (isCamino = navigator.userAgent.indexOf("Camino") > 0) {
	             return "Camino";
	         } else if (isMozilla = navigator.userAgent.indexOf("Gecko/") > 0) {
	             return "Gecko";
	         }
	     }
       
        var currentIndex;
        var autoplaycycle = true;
        var isclicked = false;
        var autoNum = 0;
        var autoincrase = 1;
        var cookieincrase;
        var coookieNum;
        var Numindex;
        
        //Slider action
        var sliderhome = null;
        var videoslide = null;
        function slidershow() {
            //debugger;
            //$("#slider_home").easySlider({ 
            //		numeric: true
            //	});
            sliderhome = $("#slider_home").easySlider({
                /*continuous: true,*/
                numeric: true,
                nextId: "slider1next",
                prevId: "slider1prev"
            });

            //$("#slider1prev >a").text("");
            //$("#slider1next>a").text("");

            $("#slider1prev").addClass("silder_home_left");
            $("#controls").addClass("slider_home_middle");
            $("#slider1next").addClass("silde_home_right");
            //$("#controls > li > a").text("");

            $("#controls").addClass("feature");
            $("#slider1prev").addClass("prev_feature");
            $("#slider1next").addClass("next_feature");
            $("#slider_home_panel").addClass("featureb");
        }

        var isIn = 0;
        var cin;

        function CheckOut() {
            //debugger;
            if (isIn == 0) {
                clearTimeout(cin);
                cin = null;
                $("#slider_home_panel").removeClass("slider_home_panel_over");
                $(".silder_home_left").removeClass("silder_home_left_over");
                $(".slider_home_middle").removeClass("slider_home_middle_over");
                $(".silde_home_right").removeClass("silde_home_right_over");
            }
        }

        function autoplay(cookiesNumber) {
            if (cookiesNumber != "" && cookiesNumber != undefined) {
                Numindex = parseInt(cookiesNumber);
                coookieNum = parseInt(cookiesNumber);
            }

            var autoindex = 1;
            var autoplayer = setInterval(function() {
                if (autoNum == 3) {
                    if (autoindex <= Numindex) {
                        sliderclick(autoindex);
                        autoindex++;
                    }
                    else {
                        clearInterval(autoplayer);
                        autoplaycycle == false;
                    }
                }
                if (autoplaycycle == true) {
                    if (coookieNum != null && coookieNum != undefined) {
                        if (coookieNum == 10) {
                            updated = coookieNum;
                            sliderclick(coookieNum);
                            coookieNum = 1;
                            autoNum++;
                            //alert(autoNum);
                        }
                        else {
                            updated = coookieNum;
                            sliderclick(coookieNum);
                            coookieNum++;
                        }
                    }
                    else {
                        if (autoincrase == 10) {
                            updated = autoincrase;
                            sliderclick(autoincrase);
                            autoincrase = 1;
                            autoNum++;
                            //alert(autoNum);
                        }
                        else {
                            updated = autoincrase;
                            sliderclick(autoincrase);
                            autoincrase++;
                        }
                    }
                }
            }, 3000);
        }
        function isclickedslider() {
            if (isclicked == false) {
                autoplaycycle = true;
            }
        }
        $(".landing_slider1_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider1_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider2_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider2_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider3_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider3_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider4_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider4_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider5_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider5_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider6_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider6_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider7_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider7_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider8_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider8_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider9_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider9_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });
        $(".landing_slider10_leftnav").bind("mouseenter", function() {

            autoplaycycle = false;

        });
        $(".landing_slider10_leftnav").bind("mouseleave", function() {

            isclickedslider();

        });

        $(".learnmorelinks").bind("click", function() {
            autoplaycycle = false;
            isclicked = true;
        });

        $(document).ready(function() {
            if (getBrowser() == "MSIE") {
                $(".skipNavLink").html("");
            }
        	var isMobileDevice = navigator.userAgent.match(/iPad/i);
    		if(isMobileDevice){
    			$(".dorp-submenu_content").css("marginTop",-1);
    			$(".div_drop_submenu_bottom").css("marginTop",-2);
    		}
            slidershow();
           
            var getuserrecord = getCookie("userrecord");

            if (getuserrecord != null && getuserrecord != undefined) {
                updated = parseInt(getuserrecord);
                sliderclick(updated);
                autoplay(getuserrecord);
            }
            else {
                autoplay();
            }
            $("ul").css("list-style", "none");

            //JQ_slide action            
            $("#chip_prev").click(function() {
                var fistitem = $("#ul_slider > li:first");
                if (parseInt(fistitem.attr("id")) == 1) {
                    return;
                }
                $($("#ul_slider > li:last")).prependTo("#ul_slider");
                isclicked = true;
                autoplaycycle = false;
                if (parseInt($("#ul_slider > li:last").attr("id")) < 5) {
                    $(".hotPic .JQ-slide-nav a.next").find("img").attr("src", "citi/images/assets/images/btn/right_arrow_feature.png");
                }
                if (parseInt($("#ul_slider > li:first").attr("id")) == 1) {
                    $(".hotPic .JQ-slide-nav a.prev").find("img").attr("src", "citi/images/assets/images/btn/left_arrow_gray.png");
                }
            });
            $("#chip_next").click(function() {
                var lastitem = $("#ul_slider > li:first").next().next().next().next();
                if (parseInt(lastitem.attr("id")) == $("#ul_slider > li").length) {
                    return;
                }
                $($("#ul_slider > li:first")).appendTo("#ul_slider");
                isclicked = true;
                autoplaycycle = false;
                if (parseInt($("#ul_slider > li:first").attr("id")) > 1) {
                    $(".hotPic .JQ-slide-nav a.prev").find("img").attr("src", "citi/images/assets/images/btn/left_arrow_feature.png");
                }
                if (parseInt($("#ul_slider > li:last").attr("id")) == 5) {
                    $(".hotPic .JQ-slide-nav a.next").find("img").attr("src", "citi/images/assets/images/btn/right_arrow_gray.png");
                }
            });
            //JQ_slide action end

            $("#slider1prev").bind("mouseenter", function() {
                JQslideshow();
                autoplaycycle = false;
                if(!$(this).find("a").hasClass("prev_empty")){
                	$(this).find("img").attr("hoverFlag","1");
                	$(this).find("img").attr("src","citi/images/assets/images/btn/left_btn_white.png");
                }
            }).bind("mouseleave",function(){
            	if(!$(this).find("a").hasClass("prev_empty")){
            		$(this).find("img").removeAttr("hoverFlag");
                	$(this).find("img").attr("src","citi/images/assets/images/btn/left_btn.png");
                }
            });

            $("#slider1next").bind("mouseenter", function() {
                
                JQslideshow();
                autoplaycycle = false;
                if(!$(this).find("a").hasClass("next_empty")){
                	$(this).find("img").attr("hoverFlag","1");
                	$(this).find("img").attr("src","citi/images/assets/images/btn/right_btn_white.png");
                }
            }).bind("mouseleave",function(){
            	if(!$(this).find("a").hasClass("next_empty")){
            		$(this).find("img").removeAttr("hoverFlag");
                	$(this).find("img").attr("src","citi/images/assets/images/btn/right_btn.png");
                }
            });
            $("#controls > li").bind("mouseenter", function() {
               
                JQslideshow();
                autoplaycycle = false;
                //$(this).addClass("dot_over");
                $(this).find("img").attr("src","citi/images/assets/images/btn/white_btn.png");
            }).bind("mouseleave",function(){
                    //$(this).removeClass("dot_over");
                    if(!$(this).hasClass("current")){
                    	$(this).find("img").attr("src","citi/images/assets/images/btn/blue_btn.png");
                    }
            });

            function JQslideshow() {
                isIn = 1;
                hoverpause = true;
                $("#slider_home_panel").addClass("slider_home_panel_over");
                $(".silder_home_left").addClass("silder_home_left_over");
                $(".slider_home_middle").addClass("slider_home_middle_over");
                $(".silde_home_right").addClass("silde_home_right_over");
               
                //$("#JQ_slide").show();
                $("#featureboxThum").show();
                $("#div_tabs").css("margin-top",120);
            }
            $("#chip_prev").bind("mouseenter", function() {
                if (parseInt($("#ul_slider > li:first").attr("id")) > 1) {
                    $(".hotPic .JQ-slide-nav a.prev").find("img").attr("src", "citi/images/assets/images/btn/left_arrow_0_2.png");
                }
                else {
                    $(".hotPic .JQ-slide-nav a.prev").find("img").attr("src", "citi/images/assets/images/btn/left_arrow_gray.png");
                }
                //$("#slider_home_panel").addClass("slider_home_panel_over");
                //$("#JQ_slide").show();
                $("#featureboxThum").show();
                $("#div_tabs").css("margin-top",120);
            }).bind("mouseleave", function() {
                if (parseInt($("#ul_slider > li:first").attr("id")) > 1) {
                    $(".hotPic .JQ-slide-nav a.prev").find("img").attr("src", "citi/images/assets/images/btn/left_arrow_feature.png");
                }
                else {
                    $(".hotPic .JQ-slide-nav a.prev").find("img").attr("src", "citi/images/assets/images/btn/left_arrow_gray.png")
                }
            });
            $("#chip_next").bind("mouseenter", function() {
                if (parseInt($("#ul_slider > li:first").attr("id")) < 6) {
                    $(".hotPic .JQ-slide-nav a.next").find("img").attr("src", "citi/images/assets/images/btn/right_arrow_feature2.png");
                }
                else {
                    $(".hotPic .JQ-slide-nav a.next").find("img").attr("src", "citi/images/assets/images/btn/right_arrow_gray.png");
                }
                //$("#slider_home_panel").addClass("slider_home_panel_over");
                //$("#JQ_slide").show();
                $("#featureboxThum").show();
                $("#div_tabs").css("margin-top",120);
            }).bind("mouseleave", function() {
                if (parseInt($("#ul_slider > li:first").attr("id")) < 6) {

                    $(".hotPic .JQ-slide-nav a.next").find("img").attr("src", "citi/images/assets/images/btn/right_arrow_feature.png");
                }
                else {
                    $(".hotPic .JQ-slide-nav a.next").find("img").attr("src", "citi/images/assets/images/btn/right_arrow_gray.png");
                }
            });
            $("#slider_home_panel").bind("mouseleave", function() {
                isIn = 0;
                cin = setTimeout('CheckOut()', 100);
                
                
                //$("#JQ_slide").hide();
                $("#featureboxThum").hide();
                $("#div_tabs").css("margin-top",60);
                
                hoverpause = false;
                
                $("#slider_home_panel").removeClass("slider_home_panel_over");
                isclickedslider();
            });
           
        });
        //Slider action end
        $("#ul_slider li").click(function() {
            //debugger;
            sliderclick($(this).attr("id"), true);
            /*if(!$("#controls9").hasClass("current")){
            	document.getElementById("limelight_player_989162").doPause();
            }*/
            if(!$("#controls10").hasClass("current")){
            	document.getElementById("sliderVideo10").pauseVideo();
            }
        });

        function sliderclick(index, isclick) {
            if (index > 10) {
                return;
            }
            var index1 = parseInt(index) - 1;
            updated = index;
            var sliderleft;
            switch (index1) {
                case 0: sliderleft = 0; break;
                case 1: sliderleft = 676; break;
                case 2: sliderleft = 1352; break;
                case 3: sliderleft = 2028; break;
                case 4: sliderleft = 2704; break;
                case 5: sliderleft = 3380; break;
                case 6: sliderleft = 4056; break;
                case 7: sliderleft = 4732; break;
                case 8: sliderleft = 5408; break;
                case 9: sliderleft = 6084; break;
                default: sliderleft = 0;
            }
            if (index == 1) {
                $("#slider1prev a").addClass("prev_empty");
                $("#slider1prev a").find("img").attr("src","citi/images/assets/images/btn/left_btn_empty.png");
                $("#slider1next a").removeClass("next_empty");
                $("#slider1next a").find("img").attr("src","citi/images/assets/images/btn/right_btn.png");
                //notvideoclick();
            }
            
            else if (index == 10) {
                //$("#landing_slider9_video").attr("src", "");
                //$("#slider10_video").attr("src", slider_video10);
                $("#slider1prev a").removeClass("prev_empty");
                $("#slider1prev a").find("img").attr("src","citi/images/assets/images/btn/left_btn.png");
                $("#slider1next a").addClass("next_empty");
                $("#slider1next a").find("img").attr("src","citi/images/assets/images/btn/right_btn_empty.png");
                //videoclick();
            }
            else {
                //notvideoclick();
                //$("#JQ_slide").hide();
                $("#featureboxThum").hide();
                $("#div_tabs").css("margin-top",60);
                isIn = 0;
                CheckOut();
                $("#slider1prev a").removeClass("prev_empty");
                $("#slider1prev a").find("img").attr("src","citi/images/assets/images/btn/left_btn.png");
                $("#slider1next a").removeClass("next_empty");
                $("#slider1next a").find("img").attr("src","citi/images/assets/images/btn/right_btn.png");
            }
            $("#slider_home ul").find("a").attr("tabindex","-1");
			var a_tab = $("#slider_home ul").find("li").get(index1);				
			$(a_tab).find("a").removeAttr("tabindex");
            if (isclick) {
               
                isclicked = true;
                autoplaycycle = false;
            }
            $("#controls li").removeClass("current");
            $("#controls li").find("img").attr("src","citi/images/assets/images/btn/blue_btn.png");
            var controlsli_id = "#controls" + index.toString();
            $(controlsli_id).addClass("current");
            $(controlsli_id).find("img").attr("src","citi/images/assets/images/btn/white_btn.png");
            $("#slider_home ul").css("margin-left", "-" + sliderleft.toString() + "px");
            $(".slidecontent").removeClass("selectboxed");
            $(".slidekey" + index.toString()).addClass("selectboxed");
            currentIndex = index;
            setCookie("userrecord", index);
        }
        
        //Select Language style		
        var timeout = 200;
        var closetimer = 0;
        var ddmenuitem = 0;
        var isclicked = 0;
        function ul_flag_timer()
        { closetimer = window.setTimeout(ul_flag_close, timeout); }

        function ul_flag_canceltimer() {
            if (closetimer) {
                window.clearTimeout(closetimer);
                closetimer = null;
            }
        }
        function ul_flag_open() {
            ul_flag_canceltimer();

            ddmenuitem = document.getElementById('ul_flag_sub').style.visibility = 'visible'; //$(this).find('ul').eq(0).css('visibility', 'visible');
        }

        function ul_flag_close() {
            if (ddmenuitem) {
                document.getElementById('ul_flag_sub').style.visibility = 'hidden'; //ddmenuitem.css('visibility', 'hidden');

            }
        }

        $("#a_lan").keydown(function(e) {
            if (e.keyCode == 13) {
                ul_flag_open();
            } else if (e.keyCode == 38) {
                if ($("#ul_flag_sub").css("visibility") == "visible") {
                    var lans = $("#ul_flag_sub").find("a");
                    $(lans).last().focus();

                    return false;
                }
            } else if (e.keyCode == 40) {
                if ($("#ul_flag_sub").css("visibility") == "visible") {
                    var lans = $("#ul_flag_sub").find("a");
                    $(lans).first().focus();

                    return false;
                }
            }
        });

        $("#ul_flag_sub a").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#a_lan").find("span").html($(this).html());
                ul_flag_timer();
            } else if (e.keyCode == 38) {
                var lans = $("#ul_flag_sub").find("a");
                if ($(this).html() != $(lans).first().html()) {
                    var prev = $(this).parent().prev().children();
                    $(prev).focus();
                } else {
                    $(lans).last().focus();
                }

                return false;
            } else if (e.keyCode == 40) {
                var lans = $("#ul_flag_sub").find("a");
                if ($(this).html() != $(lans).last().html()) {
                    var next = $(this).parent().next().children();
                    $(next).focus();
                } else {
                    $(lans).first().focus();
                }

                return false;
            } else if (e.keyCode == 9) {
                if ($(this).html() == $("#ul_flag_sub").find("a").last().html()) {
                    ul_flag_timer();
                }
            }
        });

        $("#ul_flag_sub a").click(function(e) {
            $("#a_lan").find("span").html($(this).html());
            ul_flag_timer();
        });

        document.getElementById('li_flag').onmouseover = function() {
            ul_flag_open();
            document.getElementById('li_flag').onmouseover = function() { ul_flag_open(); };
            document.getElementById('ul_flag_sub').onmouseover = function() { ul_flag_open(); };
        };
        document.getElementById('li_flag').onmouseout = function() {
            ul_flag_timer();
        };

        function setCookie(name, value) {
            //debugger;
            var Days = 1; //
            var date = new Date();
            date.setTime(date.getTime() + Days * 24 * 60 * 60 * 1000);
            document.cookie = name + "=" + escape(value) + ";expires=" + date.toGMTString();
        }
        //
        function getCookie(name) {
            //debugger;

            var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
            if (arr = document.cookie.match(reg)) {
                return unescape(arr[2]);
            }
            else {
                return null;
            }

        }
        //Select Language style	end
        
        // Right_Menu
        $(document).ready(function() { 
            $(".rightnav_scrollone_title").bind("mouseenter", function() {
                $(this).addClass("rightnav_scrollone_title_over");
            });
            $(".rightnav_scrollone_title").bind("mouseleave", function() {
                $(this).removeClass("rightnav_scrollone_title_over");
            });
                                       
            $(".rightnav_scroll_subitem_title").click(function(){                                                
                if(!$(this).parent().hasClass("div_opend")){
                    $(this).addClass("a_opend");
                    $(this).next().show();
                    $(this).parent().addClass("div_opend");
                    $(this).find(".child_item").attr("src","citi/images/assets/images/icn/global_arr_blue.png");
                    $(this).find(".child_item").addClass("move_arrow_up");
                }
                else{
                    $(this).removeClass("a_opend");
                    $(this).next().hide();
                    $(this).parent().removeClass("div_opend");
                    $(this).find(".child_item").attr("src","citi/images/assets/images/icn/global_arr_cyan.png");
                    $(this).find(".child_item").removeClass("move_arrow_up");
                }
                $(".rightnav_scroll").jScrollPane();                                             
            });
            
			$(".rightnav_scroll_subitem_title").hover(
					function(){
						if(!$(this).parent().hasClass("div_opend")){
							$(this).find(".child_item").attr("src","citi/images/assets/images/icn/global_arr_cyan.png");
						}
					},
					function(){
						if(!$(this).parent().hasClass("div_opend")){
							$(this).find(".child_item").attr("src","citi/images/assets/images/icn/global_arr_gray.png");
						}
					}
				);
			                                                        
            $(".rightnav_scrollone_title").click(function(){                                                   
                if($(this).attr("opend") == null){
                    $(this).parent().find(".rightnav_scrollone_content").show();
                    $(this).addClass("title_opend");
                    
                    $(this).next().find(".rightnav_scroll_haschild").addClass("div_opend");
                    $(this).next().find(".rightnav_scroll_subitem_title").addClass("a_opend");
                    $(this).next().find(".rightnav_scroll_subitem").show();                                        
                           
                    $(this).parent().find(".rightnav_scroll").jScrollPane();
                    $(this).attr("opend", "1");
                    $(this).find("a").addClass("rightnav_scrollone_text_opend");                                        
                }
                else{ 
                    $(this).parent().find(".rightnav_scrollone_content").hide();
                    $(this).removeClass("title_opend");
                    $(this).removeAttr("opend");
                    $(this).find("a").removeClass("rightnav_scrollone_text_opend");                                        
                }
            });
            
            $(".rightnav_scrollone_title a").keydown(function(e){
            	if(e.keyCode == 13){
            		$(this).parent().click();
            		return false;
            	}else if(e.keyCode == 40){
            		if($(this).parent().next().css("display") == "block"){
            			$(this).parent().next().find("a").first().focus();
            		}else{
            			$(this).parents(".rightnav_scrollone").next().find(".rightnav_scrollone_title").children().focus();
            		}
            		return false;
            	}else if(e.keyCode == 38){
            		$(this).parents(".rightnav_scrollone").prev().find(".rightnav_scrollone_title").children().focus();
            		return false;
            	}
            });
            
            $(".headeritem").keydown(function(e){
            	if(e.keyCode == 38){
            		$(this).parents(".rightnav_scrollone_content").prev().children().focus();
            		return false;
            	}else if(e.keyCode == 40){
            		$(this).parent().next().find("a").first().focus();
            		return false;
            	}
            });
            
            $(".rightnav_scroll_item a").keydown(function(e){
            	if(e.keyCode == 38){
            		var prev = null;
            		if($(this).hasClass("rightnav_subitem")){
            			var sub_links = $(this).parent().find("a");
            			if($(this).html() == sub_links.first().html()){
            				prev = $(this).parent().prev();
            			}else{
            				prev = $(this).prev();
            			}
            		}else{
            			if($(this).html() == $(this).parents(".jspPane").find("a").first().html()){
		        			prev = $(this).parents(".rightnav_scrollone_content").find(".rightnav_scrollone_header a");
		        		}else{
		        			prev = $(this).parent().prev().children();
		        		}
            		}
            		
            		prev.focus();
            		return false;
            	}else if(e.keyCode == 40){
            		var next = null;
            		if($(this).hasClass("rightnav_scroll_subitem_title") && $(this).hasClass("a_opend")){
            			next = $(this).next().find("a").first();
            		}else if($(this).hasClass("rightnav_subitem")){
            			var sub_links = $(this).parent().find("a");
            			if($(this).html() == sub_links.last().html()){
            				next = $(this).parents(".rightnav_scroll_item").next().find("a");
            			}else{
            				next = $(this).next();
            			}
            		}else{
            			if($(this).html() == $(this).parents(".jspPane").find("a").last().html()){
	            			next = $(this).parents(".rightnav_scrollone").next().find(".rightnav_scrollone_title").children();
	            		}
	            		else{
	            			next = $(this).parent().next().children();
	            		}
            		}
            		
            		next.focus();
            		return false;
            	}else if(e.keyCode == 13){
            		if($(this).hasClass("rightnav_scroll_subitem_title")){
            			$(this).click();
            			if($(this).hasClass("a_opend")){
            				$(this).find(".child_item").attr("src","citi/images/assets/images/icn/global_arr_blue.png");
            			}else{
            				$(this).find(".child_item").attr("src","citi/images/assets/images/icn/global_arr_gray.png");
            			}
            			return false;
            		}
            	}
            });
        });
        // Right_Menu end
        //Search Files
        			    cgn.search.$("#searchFieldContainer").empty();
                        cgn.search.$(document).ready(function() {
                            cgn.search.$("#searchFieldContainer").renderSearch({
                               formMethod: 'get', 
                               formUri: '//www.citigroup.net/CITINETWebApp/csearch/citinetuiSearch',
                               autoCompleteUri: '//www.citigroup.net/citinetui/search/autocomplete',
                               newDesign: true
                            });
                        });
        //Search Files end	    
    </script>
</body>
</html>
