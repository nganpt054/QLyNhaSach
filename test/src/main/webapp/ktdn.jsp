<%-- <%@page import="bo.khachhangbo"%>
<%@page import="bean.khachhangbean"%>
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
    	String un=(String)request.getAttribute("un");
    	String pass=(String)request.getAttribute("pass");
	   	khachhangbean kh=khbo.ktdn(un, pass);
	   	if(kh!=null){
	   		session.setAttribute("dn", kh);
	   			   session.setAttribute("kt", (long)1);
	   			   response.sendRedirect("HtSach");
	   		   }else{
	   			   response.sendRedirect("HtSach");
	   			   session.setAttribute("kt", (long)0);
	   		   }
	%>
</body>
</html> --%>
