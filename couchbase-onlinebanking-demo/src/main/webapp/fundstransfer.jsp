 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.kevintest.sample.domain.*"%>

<%

	Account acc = (Account) session.getAttribute("account");
	String accStr="";
	String stateStr="";
	State state = null;
	String strStep = "";
	if(acc!=null){
		String lastview = acc.getLastview();
		if(!"fundstransfer".equals(lastview))
			response.sendRedirect(lastview);
		
			state = acc.getState();
		if(state.getPayerID().equals("")){
			stateStr = "nullstate";
		}else{
			strStep=state.getStep();
		}
		
	}else{
		accStr="nullsession";
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
    <!-- Citi Intranet Assets -->
    <!-- 
	This is a sample of a standard page where no right or left sidebar are included.
     -->
    <link type="text/css" rel="stylesheet" media="all" href="citi/css/global.css?o" />
    <link type="text/css" rel="stylesheet" media="all" href="//www.citigroup.net/citinetui/css/jquery.autocomplete.css" />

    <script type="text/javascript" src="citi/scripts/jquery-1.7.2.min.js?o"></script>
    <script type="text/javascript" src="citi/scripts/image_preload.js"></script>
    <link type="text/css" rel="stylesheet" href="citi/css/menu.css" />
	<script type="text/javascript" src="citi/scripts/menu.js"></script>
	<script type="text/javascript" src="citi/scripts/scrollable.js"></script>
    <script type="text/javascript" src="//www.citigroup.net/citinetui/dynjs/cis.js"></script>
	<script type="text/javascript" src="citi/scripts/login.js"></script>
	<script type="text/javascript" src="citi/scripts/jquery.easing.1.3.js"></script>
	<link rel="stylesheet" type="text/css" href="citi/css/login.css"/>
	
    <style type="text/css">
        #edit-menu-parent-wrapper, #edit-menu-weight-wrapper
        {
            display: none;
        }
        
        #wizard {border:5px solid #6088C7;font-size:12px;height:400px;margin:20px auto;width:900px;overflow:hidden;position:relative;-moz-border-radius:5px;-webkit-border-radius:5px;}
#wizard .items{width:10000px; clear:both; position:absolute;}
#wizard .right{float:right;}
#wizard #status{height:35px;background:#6088C7;padding-left:5px !important;}
#status li{float:left;color:#ffffff;padding:10px 20px;}
#status li.active{background-color:#6E8BFF;font-weight:normal;}
.input{width:200px; height:25px; margin:2px auto; line-height:20px; border:1px solid #d3d3d3; padding:2px;font-size:12px;}
.page{padding:0px 30px;width:700px;float:left;margin-left:100px;margin-top:20px;margin-right:100px}
.page h3{height:42px; font-size:16px; border-bottom:1px dotted #714101; margin-bottom:5px; padding-bottom:5px;margin-right:100px}
.page h3 em{font-size:12px; font-weight:500; font-style:normal}
.page p{line-height:16px;-webkit-margin-before: 0px;
-webkit-margin-after: 0px;
-webkit-margin-start: 0px;
-webkit-margin-end: 0px;}
.page p label{font-size:12px; display:block;}
.btn_nav{height:36px; line-height:36px; margin:20px auto; width:200px}
.prev,.next{width:80px; height:32px; line-height:32px; border:1px solid #d3d3d3; cursor:pointer}
.txtfff{width:200px; height:25px;font-size: 12px;background-color:#ffffff;border:0px solid #7F4F20;}
.txtttt{color:#d3d3d3 }
#acctable, #acctable2{
	margin-top: 20px;
}
#acctable, #acctable2 tr{
	padding：10px 0px;
}
        
        
    </style>
    
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
			    var amc = amc || {}; if (!amc.on) { amc.on = amc.call = function() { } };
			    document.write("<scr" + "ipt type=\"text/javascript\" src=\"//www.adobetag.com/d2/v2/ZDItY2l0aWNvcnBvcmF0ZS00MTAxLTcyNi0=/amc.js\"></sc" + "ript>");
			    //]]>
            </script>
			<!-- End Adobe Marketing Cloud Tag Loader Code --> 
            <!-- End Site Catalyst --> 
            <div class="top_bar">
                <div class="search_wrapper_js">
                    <!--<div class="ga_search">
									<span><input class="ga_search_input" name="searchkey" value="" ></span>
									<span><input type="submit" value="" class="ga_submit_go"/></span>
				    </div>-->
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
								<input type="hidden" name="index" id="index" value="fundstransfer"/>
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
        <div id="toolbar">

           
        </div>
        <!-- main content area w/ 3 column code snippet holders -->
        <!-- change class to content_bg to show -->
        <div id="content" class="content_bg content_noleft_noright">
            <div class="col_2 col2_noleft_noright" id="PageContentBlock">
                <div class="col_central">
                    <div class="breadcrumb">
                        &nbsp;</div>
                    <div class="col_2_content">
                        <h1 id="pagetitle" class="pagetitle">Funds Transfer</h1>
                        <div class="clear-block">
                  
                            <div class="link_heading_desc">
						<form id="transferform" name="transferform" action="/transfer" method="post" >	
							
				<%
					if(null!=acc){
				%>

	<div id="wizard">
		<ul id="status">
			<li class="active"><strong>1.</strong> Account</li>
			<li><strong>2.</strong> Password</li>
			<li><strong>3.</strong> Submit</li>
		</ul>

		<div class="items" id="container">
			<div class="page" >
               <h3>Fill the Tansfer Infomation<br/><em>please fill the payer and payee information correctly.</em></h3>
               <input type="hidden" id="step" name="step" />
			   
			   <table id="acctable">
			   <tr>
			   <td width="200px">
			   Payer Account
			   </td>
			   <td>
			   <input type="text" class="input" id="payerid" name="payerid" value="<%=state.getPayerID()%>" />
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payer Name
			   </td>
			   <td>
			  <input type="text" class="input" id="payername" name="payername" value="<%=state.getPayerName()%>"/>
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payee Account
			   </td>
			   <td>
			  <input type="text" class="input" id="payeeid" name="payeeid" value="<%=state.getPayeeID()%>" />
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payee Name
			   </td>
			   <td>
			  <input type="text" class="input" id="payeename" name="payeename" value="<%=state.getPayeeName()%>"/>
			   </td>
			   </tr>
			   <tr>
			   <td>
			   Transfer Amount($)
			   </td>
			   <td>
			  <input type="text" class="input" id="transferamt" name="transferamt" value="<%=state.getTransferAmt()%>" />
			   </td>
			   </tr>
			   </table>
			   
               <div class="btn_nav">
                  <input type="button" class="next right" value="next&raquo;" />
               </div>
            </div>
			<div class="page" >
               <h3>Confirm Accounts Info<br/><em>please confirm the accounts info and fill your pwd.</em></h3>
               	
		<table id="acctable2">
			   <tr>
			   <td width="200px">
			   Payer Account
			   </td>
			   <td>
			   <input type="text" name="textfield1" id="textfield1" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payer Name
			   </td>
			   <td>
			  <input type="text" name="textfield2" id="textfield2" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payee Account
			   </td>
			   <td>
			  <input type="text" name="textfield3" id="textfield3" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payee Name
			   </td>
			   <td>
			  <input type="text" name="textfield4" id="textfield4" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			   <tr>
			   <td>
			   Transfer Amount($)
			   </td>
			   <td>
			 <input type="text" name="textfield5" id="textfield5" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			   </table>
		
		
		<p></br></p>
		<p></br></p>
		<p><label>Confirm information fine then type the PASSWORD to continue:</label><input type="text" class="input" name="userpassword" id="userpassword" value="<%=state.getUserpwd()%>"/></p>
              
               <div class="btn_nav">
                  <input type="button" class="prev" style="float:left" value="&laquo;prev" id="prev2"/>
                  <input type="button" class="next right" value="next&raquo;"  />
               </div>
            </div>
			<div class="page" >
               <h3>Get Dynamic Code and Submit<br/><em>type your mobile phone number to get dynamic code and then submit the request.</em></h3>
               <p><label>Mobile Number:</label><input type="text" class="input" name="usermobile" id="usermobile" value="<%=state.getUsermobile()%>"/></p>
               <p><input type="button" style="float:left" value="Get Dynamic Code" id="getcode" /></p>
               <br/>
               <br/>
               <br/>
               <p><label>Dynamic Code:</label><input type="text" class="input" name="dynamiccode" id="dynamiccode"/></p>
               <br/>
               <br/>
               <br/>
               <div class="btn_nav">
                  <input type="button" class="prev" style="float:left" value="&laquo;prev" id="prev3" />
                  <input type="button" class="next right" id="sub" value="submit"/>
               </div>
            </div>
		</div>
	</div>
	
	<% }else{ %>
	
	
	<div id="wizard">
		<ul id="status">
			<li class="active"><strong>1.</strong> Account</li>
			<li><strong>2.</strong> Password</li>
			<li><strong>3.</strong> Submit</li>
		</ul>

		<div class="items" id="container">
			<div class="page" >
               <h3>Fill the Tansfer Infomation<br/><em>please fill the payer and payee information correctly.</em></h3>
               <input type="hidden" id="step" name="step" />
			   <table id="acctable">
			   <tr>
			   <td width="200px">
			   Payer Account
			   </td>
			   <td>
			   <input type="text" class="input" id="payerid" name="payerid" />
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payer Name
			   </td>
			   <td>
			  <input type="text" class="input" id="payername" name="payername" />
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payee Account
			   </td>
			   <td>
			  <input type="text" class="input" id="payeeid" name="payeeid"  />
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payee Name
			   </td>
			   <td>
			  <input type="text" class="input" id="payeename" name="payeename" />
			   </td>
			   </tr>
			   <tr>
			   <td>
			   Transfer Amount($)
			   </td>
			   <td>
			  <input type="text" class="input" id="transferamt" name="transferamt"  />
			   </td>
			   </tr>
			   </table>
			   
			   
			   
			   <div class="btn_nav">
                  <input type="button" class="next right" value="next&raquo;" />
               </div>
            </div>
			<div class="page" >
               <h3>Confirm Accounts Info<br/><em>please confirm the accounts info and fill your pwd.</em></h3>
               	<table id="acctable2">
			   <tr>
			   <td width="200px">
			   Payer Account
			   </td>
			   <td>
			   <input type="text" name="textfield1" id="textfield1" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payer Name
			   </td>
			   <td>
			  <input type="text" name="textfield2" id="textfield2" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payee Account
			   </td>
			   <td>
			  <input type="text" name="textfield3" id="textfield3" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			    <tr>
			   <td>
			   Payee Name
			   </td>
			   <td>
			  <input type="text" name="textfield4" id="textfield4" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			   <tr>
			   <td>
			   Transfer Amount($)
			   </td>
			   <td>
			 <input type="text" name="textfield5" id="textfield5" class="txtfff" disabled="true"/>
			   </td>
			   </tr>
			   </table>
               
               <p></br></p>
		<p><label>Confirm information fine then type the PASSWORD to continue:</label><input type="text" class="input" name="userpassword" id="userpassword" /></p>
              
               <div class="btn_nav">
                  <input type="button" class="prev" style="float:left" value="&laquo;prev" id="prev2"/>
                  <input type="button" class="next right" value="next&raquo;" />
               </div>
            </div>
			<div class="page" >
               <h3>Get Dynamic Code and Submit<br/><em>type your mobile phone number to get dynamic code and then submit the request.</em></h3>
               <p><label>Mobile Number:</label><input type="text" class="input" name="usermobile" id="usermobile" /></p>
               <p><input type="button" style="float:left" value="Get Dynamic Code" id="getcode"/></p>
               <br/>
               <br/>
               <br/>
               <p><label>Dynamic Code:</label><input type="text" class="input" name="dynamiccode" id="dynamiccode"/></p>
               <br/>
               <br/>
               <br/>
               <div class="btn_nav">
                  <input type="button" class="prev" style="float:left" value="&laquo;pre" id="prev3"/>
                  <input type="button" class="next right" id="sub" value="submit" />
               </div>
            </div>
		</div>
	</div>
	
	<%}%>
	</form>
                            </div>
                            <!-- Start shared Links -->
                            <div class="share_link">
                                <ul>
                               
                                    <li><a href="/">
                                        <img alt="Email" title="Email"  src="citi/images/share_img_06.jpg" /></a> </li>
                                    <li><a href="/">
                                        <img alt="Export to PDF" title="Export to PDF"  src="citi/images/share_img_07.jpg" /></a> </li>
                                </ul>
                            </div>
                            <!-- End shared Links -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End main content area -->
        <!-- Footer -->
        <div id="footer" style="margin-top:20px">
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
           

            <div class="logo" title="Citi">Site legal copy here
            </div>
            <div class="copyrighttext">
                &copy; 2013 Citigroup Inc.</div>
        </div>
    </div>
</div>
    
    <script type="text/javascript" src="citi/scripts/easySlider1.7.js"></script>

    <script type="text/javascript">
	
	$(function(){
	
		var payerid = $("#payerid").val();
		var payername = $("#payername").val();
		var payeeid = $("#payeeid").val();
		var payeename = $("#payeename").val();
		var transferamt = $("#transferamt").val();
		var userpassword=$("#userpassword").val();
		var usermoblie=$("#usermobile").val();
		
		$("#textfield1").val(payerid);
		$("#textfield2").val(payername);
		$("#textfield3").val(payeeid);
		$("#textfield4").val(payeename);
		$("#textfield5").val(transferamt);
		
		var step = "<%=strStep%>";
		
		
		if(step!=""){
			var px="-"+950*(step-1)+"px"
			$("#status li").removeClass("active").eq(step-1).addClass("active");
			$("#container").css("left",px);

		}
		
		$("#wizard").scrollable({
			
			onSeek: function(event,i){
				$("#status li").removeClass("active").eq(i).addClass("active");
			},
			onBeforeSeek:function(event,i){
				
				var acc = "<%=accStr%>";
				
				if(acc=="nullsession"){
					alert("please do login first!!");
					return false;
				}
				
				
				if(i==0){
					$("#step").val("1");

					var data = $("form").serialize();
					$.ajax({
			            type: "POST",
			            url: "transfer",
			            data: data,
			            success: function(msg) {
			                if (msg == 0) {
			                } else {
			                    alert(msg);
			                }
			            }
			        });
				}
				
				if(i==1){
					
					var payerid = $("#payerid").val();
					var payername = $("#payername").val();
					var payeeid = $("#payeeid").val();
					var payeename = $("#payeename").val();
					var transferamt = $("#transferamt").val();
					var userpassword=$("#userpassword").val();
					var usermoblie=$("#usermobile").val();
					
					if(payerid==""){
						alert("please input the payer account!");
						return false;
					}
					if(payername==""){
						alert("please input the payer name!");
						return false;
					}
					if(payeeid==""){
						alert("please input the payee account!");
						return false;
					}
					if(payeename==""){
						alert("please input the payee name!");
						return false;
					}
					if(transferamt==""){
						alert("please input the transfer amount!");
						return false;
					}
					
					$("#textfield1").val(payerid);
					$("#textfield2").val(payername);
					$("#textfield3").val(payeeid);
					$("#textfield4").val(payeename);
					$("#textfield5").val(transferamt);
					$("#step").val("2");

					var data = $("form").serialize();
					$.ajax({
			            type: "POST",
			            url: "transfer",
			            data: data,
			            success: function(msg) {
			                if (msg == 0) {
			                    alert('success');
			                    /**window.location.href = '/GF_Session_Demo/index.html';*/
			                } else {
			                    alert(msg);
			                }
			            }
			        });
				}
				
				if(i==2){
					var userpassword=$("#userpassword").val();
					if(userpassword==""){
						alert("please input the account password to continue!");
						return false;
					}
					
					$("#step").val("3");

					var data = $("form").serialize();

					$.ajax({
			            type: "POST",
			            url: "transfer",
			            data: data,
			            success: function(msg) {
			                if (msg == 0) {
			                    /*alert('success');
			                    window.location.href = '/GF_Session_Demo/index.html';*/
			                } else {
			                    alert(msg);
			                }
			            }
			        });
					
				}
				
			}
		});
		$("#sub").click(function(){
			
			var dynamiccode=$("#dynamiccode").val();
			
			if(dynamiccode==""){
				alert("please input the dynamic code continue!");
				return false;
			}
			
			var data = $("form").serialize();
			$.ajax({
	            type: "POST",
	            url: "transfer2",
	            data: data,
	            success: function(msg) {
	                if (msg == 0) {
	                    alert('your funds transfer request submit successfully!');
	                    window.location.href = '/transfer2';
	                } else {
	                    alert(msg);
	                }
	            }
	        });
		
		});
		
		$("#getcode").click(function(){
			if($.trim($("#usermobile").val())==""){
				alert("please input the mobile number to get the dynamic code!");
				return false;
			}
			
			var data = $("form").serialize();
			$.ajax({
	            type: "POST",
	            url: "transfer",
	            data: data,
	            success: function(msg) {
	                if (msg == 0) {
	                } else {
	                    alert(msg);
	                }
	            }
	        });
			
			var num=""; 
			for(var i=0;i<6;i++) 
			{ 
				num+=Math.floor(Math.random()*10); 
			} 
			
			alert("This code is only for demo: "+ num)
		});
		
		$("#prev2").click(function(){
			$("#status li").removeClass("active").eq(0).addClass("active");
			$("#container").css("left","0px");
		});
		$("#prev3").click(function(){
			$("#status li").removeClass("active").eq(1).addClass("active");
			$("#container").css("left","-900px");
		});
	
});
	
	
                //FaceBox
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

                function isIE7() {
                    var browser = navigator.appName
                    var b_version = navigator.appVersion
                    var version = b_version.split(";");
                    var trim_Version = version[1].replace(/[ ]/g, "");
                    if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE7.0")
                        return true;
                    return false;
                }

                function getPageSize() {
                    var scrW, scrH;
                    if (window.innerHeight && window.scrollMaxY) {
                        // Mozilla    
                        scrW = window.innerWidth + window.scrollMaxX;
                        scrH = window.innerHeight + window.scrollMaxY;
                    }
                    else if (document.body.scrollHeight > document.body.offsetHeight) {
                        // all but IE Mac    
                        scrW = document.body.scrollWidth;
                        scrH = document.body.scrollHeight;
                    }
                    else if (document.body) {
                        // IE Mac    
                        scrW = document.body.offsetWidth;
                        scrH = document.body.offsetHeight;
                    }
                    var winW, winH;
                    if (window.innerHeight) {
                        // all except IE    
                        winW = window.innerWidth;
                        winH = window.innerHeight;
                    }
                    else if (document.documentElement && document.documentElement.clientHeight) {
                        // IE 6 Strict Mode    
                        winW = document.documentElement.clientWidth;
                        winH = document.documentElement.clientHeight;
                    } else if (document.body) {
                        // other   
                        winW = document.body.clientWidth;
                        winH = document.body.clientHeight;
                    }

                    var pageW = (scrW < winW) ? winW : scrW;
                    var pageH = (scrH < winH) ? winH : scrH;
                    return { pageW: pageW, pageH: pageH, winW: winW, winH: winH };
                }

                function showFbModal() {
                    var psize = getPageSize();
                    var modal = document.getElementById("facebookModal");
                    modal.style.left = (psize.pageW - 425) / 2 + "px";
                    modal.style.top = "250px";
                    modal.style.display = "block";
                    var closebnt = document.getElementById("div_facebook_close");
                    closebnt.style.display = "block";

                    var _body = document.getElementsByTagName('body')[0];
                    var _div = document.createElement("div");

                    _div.id = "div_shape";
                    _body.appendChild(_div);
                }

                function closeFbModal() {
                    var modal = document.getElementById("facebookModal");
                    modal.style.display = "none";
                    var closebnt = document.getElementById("div_facebook_close");
                    closebnt.style.display = "none";

                    var _div = document.getElementById("div_shape");
                    if (_div != null) {
                        document.body.removeChild(_div);
                    }
                }
                //FaceBox end
    
		<!--
        $(document).ready(function() {
            if(getBrowser() == "MSIE"){
							$(".skipNavLink").html("");
						}
        	var isMobileDevice = navigator.userAgent.match(/iPad/i);
    		if(isMobileDevice){
    			$(".dorp-submenu_content").css("marginTop",-1);
    			$(".div_drop_submenu_bottom").css("marginTop",-2);
    		}
			$("#wrapper").click(function(){});
			$("ul").css("list-style", "none");
            //FaceBox closebutton style
            $("#a_facebook_close").hover(
            function() {
                $(this).addClass("a_hover");
                $(this).removeClass("a_link");
            },
            function() {
                $(this).addClass("a_link");
                $(this).removeClass("a_hover");
            });
            //FaceBox closebutton style end
        
            $('#edit-menu-weight-wrapper').show();
            //Share icon style
            $('.share_icon').hover(
		              function() {
		                  var imgSrc = $(this).attr("src");
		                  strImg = imgSrc.replace(".jpg", "_1.jpg");
		                  $(this).attr("src", strImg);
		              },
		              function() {
		                  var imgSrc = $(this).attr("src");
		                  strImg = imgSrc.replace("_1.jpg", ".jpg");
		                  $(this).attr("src", strImg);
		              });
		    //Share icon style end
		    
                  
        });
        // -->
        
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
        
        $("#a_lan").keydown(function(e){
					if(e.keyCode == 13){
						ul_flag_open();
					}else if(e.keyCode == 38){
						if($("#ul_flag_sub").css("visibility") == "visible"){
							var lans = $("#ul_flag_sub").find("a");
							$(lans).last().focus();
							
							return false;
						}
					}else if(e.keyCode == 40){
						if($("#ul_flag_sub").css("visibility") == "visible"){
							var lans = $("#ul_flag_sub").find("a");
							$(lans).first().focus();
							
							return false;
						}
					}
				});
				
				$("#ul_flag_sub a").keydown(function(e){
					if(e.keyCode == 13){
						$("#a_lan").find("span").html($(this).html());
						ul_flag_timer();
					}else if(e.keyCode == 38){
						var lans = $("#ul_flag_sub").find("a");
						if($(this).html() != $(lans).first().html()){
							var prev = $(this).parent().prev().children();
							$(prev).focus();
						}else{
							$(lans).last().focus();
						}
						
						return false;
					}else if(e.keyCode == 40){
						var lans = $("#ul_flag_sub").find("a");
						if($(this).html() != $(lans).last().html()){
							var next = $(this).parent().next().children();
							$(next).focus();
						}else{
							$(lans).first().focus();
						}
						
						return false;
					}else if(e.keyCode == 9){
						if($(this).html() == $("#ul_flag_sub").find("a").last().html()){
							ul_flag_timer();
						}
					}
				});
				
				$("#ul_flag_sub a").click(function(e){
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
        //Select Language style	end      
    
        //Modal
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

        function isIE7() {
            var browser = navigator.appName
            var b_version = navigator.appVersion
            var version = b_version.split(";");
            var trim_Version = version[1].replace(/[ ]/g, "");
            if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE7.0")
                return true;
            return false;
        }

        function getPageSize() {
            var scrW, scrH;
            if (window.innerHeight && window.scrollMaxY) {
                // Mozilla    
                scrW = window.innerWidth + window.scrollMaxX;
                scrH = window.innerHeight + window.scrollMaxY;
            }
            else if (document.body.scrollHeight > document.body.offsetHeight) {
                // all but IE Mac    
                scrW = document.body.scrollWidth;
                scrH = document.body.scrollHeight;
            }
            else if (document.body) {
                // IE Mac    
                scrW = document.body.offsetWidth;
                scrH = document.body.offsetHeight;
            }
            var winW, winH;
            if (window.innerHeight) {
                // all except IE    
                winW = window.innerWidth;
                winH = window.innerHeight;
            }
            else if (document.documentElement && document.documentElement.clientHeight) {
                // IE 6 Strict Mode    
                winW = document.documentElement.clientWidth;
                winH = document.documentElement.clientHeight;
            } else if (document.body) {
                // other   
                winW = document.body.clientWidth;
                winH = document.body.clientHeight;
            }

            var pageW = (scrW < winW) ? winW : scrW;
            var pageH = (scrH < winH) ? winH : scrH;
            return { pageW: pageW, pageH: pageH, winW: winW, winH: winH };
        }

        function showModal() {
            var psize = getPageSize();
            var modal = document.getElementById("helpModal");
            modal.style.left = (psize.pageW - 425) / 2 + "px";
            modal.style.top = "250px"; //(psize.pageH+75)/2+"px";
            modal.style.display = "block";
            var closebnt = document.getElementById("div_close");
            closebnt.style.left = (psize.pageW - 345) + "px";
            if (getBrowser() == "MSIE") {
                if (isIE7()) {
                    closebnt.style.left = (psize.pageW - 365) + "px";
                }
            }

            closebnt.style.top = "75px"; //(psize.pageH+75)/2+"px";
            closebnt.style.display = "block";

            var _body = document.getElementsByTagName('body')[0];
            var _div = document.createElement("div");

            _div.id = "div_shape";
            _body.appendChild(_div);
            slidershow();
        }

        function closeModal() {
            var modal = document.getElementById("helpModal");
            modal.style.display = "none";
            var closebnt = document.getElementById("div_close");
            closebnt.style.display = "none";

            var _div = document.getElementById("div_shape");
            if (_div != null) {
                document.body.removeChild(_div);
            }
        }
        //Modal end
        
        //Modal Slider
        function slidershow() {
            //debugger;
            $("#slider").easySlider({
                numeric: true
            });
            $("#slider").easySlider({
                /*auto: true,*/
                continuous: true,
                nextId: "slider1next",
                prevId: "slider1prev"
            });

            $("#slider1prev >a").text("");
            $("#slider1next>a").text("");

            $("#slider1prev").addClass("silderleft");
            $("#controls").addClass("slidermiddle");
            $("#slider1next").addClass("silderight");
            $("#controls > li > a").text("");
        }
        //Modal Slider end
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

    <!-- End Modal & Slideshow Display -->
</body>
</html>
