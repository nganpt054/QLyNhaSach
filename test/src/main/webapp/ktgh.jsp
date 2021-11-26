<%@page import="bean.khachhangbean"%>
<%@page import="bo.khachhangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
		response.setCharacterEncoding("utf-8");
    	request.setCharacterEncoding("utf-8");
	   	khachhangbo khbo=new khachhangbo();
	   	String un=request.getParameter("user");
	   	String pass=request.getParameter("pw");
	   	khachhangbean kh=khbo.ktdn(un, pass);
	   	if(kh!=null){
	   		session.setAttribute("dn", kh);
	   			   session.setAttribute("kt", (long)1);
	   			   response.sendRedirect("menu.jsp");
	   		   }else{
	   			   response.sendRedirect("menu.jsp");
	   			   session.setAttribute("kt", (long)0);
	   		   }
	%>

</body>
</html>