<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
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
      <li><a href="#">Lịch sử </a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
     
		<% khachhangbean kh=(khachhangbean)session.getAttribute("dn");
		if(kh!=null){
		   
		%>
		 <li><a href="#">Xin chao: <%=kh.getHoten()%> </a></li>
		 <li><a href="dangxuatController"><span class="glyphicon glyphicon-user"></span> Đăng Xuất</a></li>
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
 <%
 response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	ArrayList<loaibean> dsloai =(ArrayList<loaibean>)request.getAttribute("dsloai");
    ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
 %>
 <table width="1000" align="center">
    
    <tr> 
       <td valign="top" width="200">
       		<table class="table table-hover">
       		<%for(loaibean loai:dsloai){%>
       			<tr>
       			<td>
        		<a href="HtSach?ml=<%=loai.getMaloai() %>&find="<%=request.getParameter("txtfind")%>> <%=loai.getTenloai()%>  </a>
        		</td>
        		</tr>
            <%} %> 
       		</table>
        </td>
        <td valign="top" width="600"> 
        
        	<table class="table table-hover">
              <% giohangbo gh1;
             
if(session.getAttribute("gh")!=null){
	gh1=(giohangbo) session.getAttribute("gh");%>
	 <b>Giỏ hàng có <%=gh1.Dem()%> </b>
	<% for(giohangbean g1: gh1.ds) {%>
	<tr>
	<form action="capnhatController" method="post">
		<td><input name="choose" type="checkbox" value="<%=g1.getMasach() %>"></td>
		<td>				
				<b><%=g1.getTensach() %></b><br>
				<b><%=g1.getTacgia() %></b><br>
				<b>Giá: <%=g1.getGia() %> VNĐ</b><br>
		
					
					
						Số lượng: <input type="number" min="1"  name="soluong" value="<%=g1.getSlmua()%>" style="width:50px;">
						<input type="hidden" name="masach" value="<%=g1.getMasach()%>">	
						<input type="submit" name ="butcapnhat"value="Cập nhật">
						<input type="submit" name="butxoa" value="Trả lại">
						
					
				
				
					
			</td>	
			
       </form>
			
		</tr>
		
		
	<% }%>	
	<td><h4><b>Tổng tiền: <%=gh1.TongTien() %> VNĐ</b></h4></td>
	
	
	<% } %>
	</table>
	
   <div>
	<a href="xoagiohang.jsp"><button class="btn btn-primary">Xóa tất cả</button></a>
	<a href="HtSach"><button class="btn">Tiếp tục mua hàng</button></a>
	<a href="datmuaController"><button class="btn btn-success">Xác nhận đặt mua</button></a>
</div> 
	 <td valign="top" width="200"> 
        <form action="htgio.jsp" method="post">
        <label> Tìm kiếm: </label> <br>
        <input name="txtfind" type="text" class="form-control">
        <input name="but" type="submit" value="Tìm kiếm" class="btn-primary">
        	</form>
        </td>
</table>

</body>
</html>
