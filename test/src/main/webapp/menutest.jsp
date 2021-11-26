<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      
		<c:choose>
			<c:when test="${sessionScope.dn!=null }"> 
				 <li><a href="#">Xin chao:${sessionScope.dn.getHoten() } 
				 </a></li>
		     </c:when>
	      <c:otherwise>
          <li><a href="#" data-toggle="modal" data-target="#myModal">
           <span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
             
             	<c:if test="${sessionScope.kt!=null && sessionScope.kt=='0'}">
             		 <script>alert('Dang nhap sai');</script>  
             	</c:if>
            </c:otherwise>
            </c:choose>
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
  				<input type="text" id="TenDN" name="TenDN"><br>
  				<label>Mật khẩu</label><br>
  				<input type="passWord" id="Matkhau" name="Matkhau"><br>
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
                  <%
                  int n=ds.size();
                  for(int i=0;i<n;i++) {
                    sachbean s=ds.get(i);
                  %>
<tr>
                       <td>
                            <img src=<%=s.getAnh() %>><br>
                             <a href="giohangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
                             <img src="mua.jpg">
                             </a> 
                             <br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
     
							<%i++;
                         if(i<n){
                        	 s=ds.get(i);
                         
                       %><td>
                            <img src=<%=s.getAnh() %>><br>
                              <a href="giohangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
                             <img src="mua.jpg">
                             </a> 
								<br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
                       </td>
                       <%} %>
                       <%i++;
                         if(i<n){
                        	 s=ds.get(i);
                         
                       %><td>
                            <img src=<%=s.getAnh() %>><br>
                             <a href="giohangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
                             <img src="mua.jpg">
                             </a> 
								<br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
                       </td>
                       <%} %>
                    </tr>
                  <%} %>
              </table>
              </td>
         <td valign="top" width="200"> 
        <form action="HtSach" method="post">
        <label> Tìm kiếm: </label> <br>
        <input name="txtfind" type="text" class="form-control">
        <input name="but" type="submit" value="Tìm kiếm" class="btn-primary">
        	</form>
        </td>
</tr>
</table>
</body>
</html>
