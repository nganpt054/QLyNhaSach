<%@page import="bean.adminbean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="adminLoaiController">Quản lý loại sách</a></li>
      <li><a href="adminSachController">Quản lý sách</a></li>
      <li><a href="adminKHController">Quản lý khách hàng</a></li>
      <li><a href="xacnhanThanhToanController">Quản lý đơn hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
		<% adminbean ad=(adminbean)session.getAttribute("dn");
		if(ad!=null){
		   
		%>
		 <li><a href="#">Xin chao: <%=ad.getTenDangNhap()%> </a></li>
		 <li><a href="dangxuatAdminController"><span class="glyphicon glyphicon-user"></span> Đăng Xuất</a></li>
           <%}else{ %>
           <li><a href="dangky.jsp"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
			<li><a href="#" data-toggle="modal" data-target="#myModal">

           <span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
              <%  if(session.getAttribute("kt")!=null && session.getAttribute("kt").toString().equals("0")){%>
             		 <script>alert('Dang nhap sai');</script>
              <%} %>
           <%} %>
    </ul>
  </div>
</nav>
<!-- Button Đăng nhập -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
 <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Đăng nhập hệ thống</h4>
        </div>
        <div class="modal-body">
  				<form action="ktdnAdminController" method="post">
 				<label>Tài khoản</label><br>
  				<input type="text" id="TenDN" name="TenDN"><br>
  				<label>Mật khẩu</label><br>
  				<input type="passWord" id="Matkhau" name="Matkhau"><br>
  				<input name="btlog" value="Đăng nhập" type="submit">
				</form>
  			</div>
      </div>
    </div>
 </div>
 

</table>
</body>
</html>
