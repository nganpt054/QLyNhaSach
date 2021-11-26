<%-- 
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<body>
<%
 	String masach=request.getParameter("ms");
String tensach=request.getParameter("ts");
String tacgia=request.getParameter("tg");
String giatam=request.getParameter("gia");
// Nếu người dùng mua lần đầu tiên
	giohangbo gh=null;
	if(session.getAttribute("gh")==null){
		gh=new giohangbo();
		session.setAttribute("gh", gh);
	}
	if (masach!=null)
	{
		//b1: gán sesion vào biến
		gh=(giohangbo) session.getAttribute("gh");
		gh.Them(masach, tensach, tacgia, Long.parseLong(giatam), (long) 1);// thay đổi biến
		session.setAttribute("gh", gh);// luu biến vào session
	}
	//Hiển thị giỏ
	 response.sendRedirect("htgio.jsp");
%>
</body>
</html> --%>