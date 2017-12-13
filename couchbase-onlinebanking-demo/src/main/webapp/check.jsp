<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
if(request.getSession().getAttribute("account")==null){ 
	response.sendRedirect("index.html");
}
%>