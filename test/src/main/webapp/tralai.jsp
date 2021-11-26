<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="bean.giohangbean" %>
<%@ page import="bo.giohangbo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	giohangbo gh = new giohangbo();

String masach=request.getParameter("masach");

giohangbo sl=null;
if (masach!=null)
{
	//b1: gán sesion vào biến
	gh=(giohangbo) session.getAttribute("gh");
	gh.xoa(masach);
	session.setAttribute("gh", gh);
}
//Hien thi gio
 response.sendRedirect("htgio.jsp");
	
	
	
%>
</body>
</html>