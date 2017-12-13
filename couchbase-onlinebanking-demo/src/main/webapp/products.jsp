<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online Banking Demo</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function toSubmit(strmenu) {
		
		//document.getElementById("menu").value=strmenu;
		//document.getElementById("form0").submit();
		window.location.href=strmenu;
	}
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
</head>
<body>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#AD7934">
  <tr>
    <td width="230" valign="top"><table width="226" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="text-align:center;"><a href="index.html"><img src="images/index_02.gif" alt="" width="226" height="139" border="0" /></a></td>
  </tr>
  <tr>
    <td valign="top" style="padding-left:50px; padding-right:20px; padding-top:20px; padding-bottom:20px;">
	<form id="form0" name="form0" method="post" action="dispatch" style="margin:auto;">
	<div class="menu"><input type="hidden" name="menu" id="menu"/><a href="javascript:toSubmit('index')">Home Page</a></div>
	<div class="menu"><a href="javascript:toSubmit('aboutus')">About Us</a></div>
	<div class="menu"><a href="javascript:toSubmit('services')">Services</a></div>
	<div class="menu"><a href="javascript:toSubmit('products')">Products</a></div>
	<div class="menu"><a href="javascript:toSubmit('support')">Support</a></div>
	<div class="menu"><a href="javascript:toSubmit('staff')">Staff</a></div>
	<div class="menu"><a href="javascript:toSubmit('links')">Linkes</a></div>
	<div class="menu"><a href="javascript:toSubmit('contacts')">Contacts</a></div>
	<div class="menu"><a href="javascript:toSubmit('fundstransfer')">Funds Transfer</a></div>
  </form>
	</td>
  </tr>
  <tr>
    <td style="padding-left:20px; padding-right:10px;">
	<div style="text-align:center;"><img src="images/index_47.gif" width="161" height="28" alt="" /></div>
	<div class="body1" style="padding-top:10px;"><span style="color:#663300;">15th Jan,06</span><br />
	  Lorem ipsum dolor sit amet, consectetuer adi quis turpis eu liepil.<br /><br />
	  <a href="content.html">read more</a> <img src="images/index_57.gif" width="9" height="5" alt="" /><br />
	</div>
	<div class="body1" style="padding-top:10px;"><span style="color:#663300;">15th Jan,06</span><br />
	  Lorem ipsum dolor sit amet, consectetuer adi quis turpis eu liepil.<br /><br />
	  <a href="content.html">read more</a> <img src="images/index_57.gif" width="9" height="5" alt="" /><br />
	</div>
	<div class="body1" style="padding-top:10px;"><span style="color:#663300;">15th Jan,06</span><br />
	  Lorem ipsum dolor sit amet, consectetuer adi quis turpis eu liepil.<br /><br />
	  <a href="content.html">read more</a> <img src="images/index_57.gif" width="9" height="5" alt="" /><br />
	</div>
	</td>
  </tr>
</table>
	</td>
    <td width="320" valign="top" bgcolor="#7F4F20">
		<div><img src="images/index_05.gif" width="320" height="333" alt="" /></div>
		<div style="font-size:14px; font-weight:bold; padding-left:15px; color:#F8F979;">Products Page</div>
		<div class="body1" style="padding-top:15px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam quis turpis eu libero varius vestibulum. In feugiat. Sed et tuetato neque.Lorem ipsum dolor sit amet, consectetuer adipiscing elit.<br /><br />
Nullam quis turpis eu libero varius vestibulum. In feugiat. Sed et turpis ac risus alinec mollis congue mauris. Cum sociis natoque penatibus et magnis dis parturuet rhoncus.<br /><br />
Aliquam ac neque nec leo condimentum lobortis. Donec mollis congue mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent sagittisn porttitor elit.<br /><br />
Duis quis dui quis leo pulvinar luctus.Morbi consectetu Donec mollis congue mauris.  sociis natoquelutpat odio.<br /><br />
Sed pulris tortor, sodales sit amet, aliquet vitae, lobortis id, lacus. Nunc semper consectetuer pede.Cum sociis natoodo.
		</div>
		<div class="body1" style="text-align:right; padding-top:6px;"><a href="content.html">read more</a> <img src="images/index_51.gif" width="9" height="5" alt="" /></div>
	</td>
    <td width="230" valign="top">
		<div style="padding-top:20px; padding-right:12px; padding-bottom:50px; text-align:right;">
			<table width="128" border="0" cellspacing="3" cellpadding="0">
			  <tr>
				<td align="center" valign="top"><img src="images/index_08.gif" width="33" height="21" alt="" /></td>
				<td align="center" valign="top"><img src="images/index_10.gif" width="36" height="21" alt="" /></td>
				<td align="center" valign="top"><img src="images/index_12.gif" width="33" height="21" alt="" /></td>
				<td align="center" valign="top"><img src="images/index_14.gif" width="26" height="21" alt="" /></td>
			  </tr>
			</table>
		</div>
		<div>
			<table width="224" border="0" align="center" cellpadding="4" cellspacing="0" style="background-image:url(images/index_21.gif);">
			  <tr>
				<td>
				<div style="padding:15px;"><img src="images/index_24.gif" width="176" height="22" alt="" /></div>
				
				<c:if test="${ null == account }">
				
				
				<div style="padding-bottom:8px;">
				  <form id="form1" name="form1" action="login" method="post" style="margin:auto;">
				   <input type="hidden" name="index" id="index" value="products"/>
				    <table width="215" border="0" align="center" cellpadding="3" cellspacing="0">
                      <tr>
                        <td width="59" class="field">User Name:</td>
                        <td width="140"><label><input type="text" name="username" style="width:90%;" /></label></td>
                      </tr>
                      <tr>
                        <td class="field">Password:</td>
                        <td><label><input type="password" name="password" style="width:90%;" /></label></td>
                      </tr>
                      <tr>
                        <td colspan="2" align="right" class="field" style="padding-right:12px;">
                          <label>
                          <input type="image" name="imageField"  src="images/index_33.gif" />
                        </label></td>
                      </tr>
                    </table>
				  </form>
				  </div>
				  
				 </c:if>
				  <c:if test="${ null != account }">
				  <div style="padding-bottom:8px;">
				  	<form id="form2" name="form2" method="post" action="logout" style="margin:auto;">
				  	<table width="215" border="0" align="center" cellpadding="3" cellspacing="0">
                       <tr>
                        <td width="60" class="field">welcome <c:out value="${account.getUsername()}" /></td>
                        <td width="40" align="center"> <a href="javascript:form2.submit()" >sign out</a></td>
                      </tr>
                    </table>
                    </form>
                  </div>  
				  </c:if>
				</td>
			  </tr>
		  </table>
		</div>
		<div style="text-align:center; padding-top:12px; padding-bottom:12px;"><a href="#"><img src="images/index_38.gif" alt="" width="198" height="107" border="0" /></a></div>
		<div style="padding-left:15px; padding-right:15px; text-align:center;"><img src="images/index_43.gif" width="191" height="23" alt="" /></div>
		<div class="body1" style="padding-left:22px; padding-right:22px; padding-top:6px;">Lorem ipsum dolor sit amet, consect etuer adipiscing elit. <br />
		  <br />
	    Nullam quis turpis eulibero varius esti bulum. <br />
	    <br />
	    In feugiated etturpis acrisus liquet rhoncus. Nam cursus molestie metus.<br />
		<br />
		<a href="content.html">read more</a> <img src="images/index_57.gif" width="9" height="5" alt="" /></div>
		<div style="text-align:center; padding-top:20px; padding-bottom:12px;"><a href="#"><img src="images/index_38.gif" alt="" width="198" height="107" border="0" /></a></div>
	</td>
  </tr>
  <tr>
    <td class="footer"><a href="index.html">Home Page</a>  :  <a href="content.html">About Us</a>  :  <a href="content.html">Services</a>  <a href="content.html">Products</a></td>
    <td bgcolor="#7F4F20" class="footer" style="color:#C38D46;">copyright&copy; Companyname.com,<br />
    All rights Reserved</td>
    <td class="footer"><a href="content.html">Support</a> : <a href="content.html">Staff</a> : <a href="content.html"></a><a href="content.html">Linkes<a href="content.html"></a> :<br /> 
    <a href="content.html"></a><a href="contact.html">Contacts</a></td>
  </tr>
</table>

</body>
</html>