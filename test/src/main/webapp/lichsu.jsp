
<%@page import="bean.lichsuMHbean"%>
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
      <li class="active"><a href="HtSach">Trang chủ</a></li>
      <li><a href="htgioController">Giỏ hàng</a></li>
      <li><a href="#">Thanh toán</a></li>
      <li><a href="lichsuMHController">Lịch sử </a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
		<% khachhangbean kh=(khachhangbean)session.getAttribute("dn");
		if(kh!=null){
		   
		%>
		 <li><a href="#">Xin chao: <%=kh.getHoten()%> </a></li>
		 <li><a href="dangxuatController"><span class="glyphicon glyphicon-user"></span> Đăng Xuất</a></li>
           <%}else {%>
           <li><a href="dangky.jsp"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
           <li><a href="#" data-toggle="modal" data-target="#myModal">
           <span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
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
 <h2 style="text-align:center">LỊCH SỬ MUA HÀNG</h2><table align="center">
<%
 response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	ArrayList<lichsuMHbean> ds =(ArrayList<lichsuMHbean>) request.getAttribute("dsls");
   
 %>

             <table width="1000" align="center">
    
    <tr> 
       <td valign="top" width="200">
       		<table class="table table-bordered">
       		 <thead>
    <tr>
      <th scope="col">Mã khách hàng</th>
      <th scope="col" >Tên sách</th>
      <th scope="col">Số lượng mua</th>
      <th scope="col">Giá</th>
      <th scope="col">Thành tiền</th>
      <th scope="col">Đã mua</th>
    </tr>
  </thead>
       		<%for(lichsuMHbean ls:ds){%>
       			<tr>
       			<td>
        		<br>
                             <%=ls.getMakh()%> </td>
                            <td> <%=ls.getTensach()%> </td>
                             <td><%=ls.getSoLuongMua()%> </td>
                            <td> <%=ls.getGia()%> </td>
                             <td><%=ls.getThanhTien()%> </td>
                            <td> <%=ls.getDamua()%> </td>
     
        		</td>
        		</tr>
            <%}%> 
       		</table>
        </td>
        </tr>
        </table>          
                       
                     
                        
                      
                        
                        

</body>
</html>








