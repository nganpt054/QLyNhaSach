

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
      <li class="active"><a href="adminSachController">Quản Lý Sách</a></li>
      <li><a href="adminLoaiController">Quản Lý Loại Sách</a></li>
      <li><a href="adminKHController">Quản Lý Khách Hàng</a></li>
      <li><a href="adminDHController">Xác Nhận Thanh Toán</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="dangky.jsp"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
		<% adminbean ad=(adminbean)session.getAttribute("dn");
		if(ad!=null){
		   
		%>
		 <li><a href="#">Xin chao admin: <%=ad.getTenDangNhap()%> </a></li>
           <%}else{ %>
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
  				<form action="ktdnController" method="post">
 				<label>Tài khoản</label><br>
  				<input type="text" id="user" name="TenDN"><br>
  				<label>Mật khẩu</label><br>
  				<input type="passWord" id="pw" name="Matkhau"><br>
  				<input name="btlog" value="Đăng nhập" type="submit">
				</form>
  			</div>
      </div>
    </div>
 </div>
 <h2 style="text-align:center">THÊM SÁCH</h2><table align="center">

                        <form action="adminThemSachController" method="post">
                        <tbody>
                        <tr style="height:40px">
                                <td>Mã sách:</td>
                                <td>
                                    <input id="MaSach" name="MaSach" type="text" value="">

                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>Tên sách:</td>
                                <td>
                                    <input id="TenSach" name="TenSach" type="text" value="">

                                </td>
                            </tr>
                            <tr style="height:40px">
                             	<td>Tác Giả: </td>
                                <td>
                                    <input id="TacGia" name="TacGia" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Giá:</td>
                                <td>
                                    <input id="Gia" name="Gia" type="text" value="">
                                </td>
                            </tr>
                             <tr style="height:40px">
                                <td> Ảnh:</td>
                                <td>
                                    <input id="Anh" name="Anh" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>Mã loại: </td>
                                <td>
                                    <input id="MaLoai" name="MaLoai" type="text" value="">
                                </td>
                              </tr>
                             
                            <tr style="height:40px">
                                
                                <td>
                                    <input type="Submit" value="Thêm">
                                    
                                </td>
                                
                                
                            </tr>
                        </tbody>
                        </form >
                        
                        
                        

</body>
</html>








