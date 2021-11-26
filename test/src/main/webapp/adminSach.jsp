<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%
 response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	ArrayList<loaibean> dsloai =(ArrayList<loaibean>)request.getAttribute("dsloai");
    ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
 %>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    	
<script src="js/jquery-1.11.1.min.js"></script>   
   <style type="text/css">.table&amp;amp;gt;tbody&amp;amp;gt;tr&amp;amp;gt;td, .table&amp;amp;gt;tfoot&amp;amp;gt;tr&amp;amp;gt;td {  
vertical-align: middle;
}
 
@media screen and (max-width: 600px) { 
table#cart tbody td .form-control { 
width:20%; 
display: inline !important;
} 
 
.actions .btn { 
width:36%; 
margin:1.5em 0;
} 
 
.actions .btn-info { 
float:left;
} 
 
.actions .btn-danger { 
float:right;
} 
 
table#cart thead {
display: none;
} 
 
table#cart tbody td {
display: block;
padding: .6rem;
min-width:320px;
} 
 
table#cart tbody tr td:first-child {
background: #333;
color: #fff;
} 
 
table#cart tbody td:before { 
content: attr(data-th);
font-weight: bold; 
display: inline-block;
width: 8rem;
} 
 
table#cart tfoot td {
display:block;
} 
table#cart tfoot td .btn {
display:block;
}
}</style>
</head>
<body>
<h2 class="text-center">Quản lý Sách</h2>
<div class="container"> 
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <td><a href="http://hocwebgiare.com/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Thêm sách</a>
    </td> 
   <tr> 
    <th style="width:50%">Tên sản phẩm</th> 
    <th style="width:10%">Tác giả</th> 
    <th style="width:8%">Giá</th> 
    <th style="width:22%" class="text-center">Mã loại</th> 
    <th style="width:10%"> </th> 
   </tr> 
  </thead> 
  <tbody>
   <%
                  int n=ds.size();
                  for(int i=0;i<n;i++) {
                    sachbean s=ds.get(i);
                  %>
  <tr> 
   <td data-th="Product"> 
    <div class="row"> 
     <div class="col-sm-2 hidden-xs"><img src=<%=s.getAnh() %> alt="Sản phẩm 1" class="img-responsive" width="100">
     </div> 
     <div class="col-sm-10"> 
      <h4 class="nomargin"> <%=s.getTensach() %></h4> 
      
     </div> 
    </div> 
   </td> 
   <td data-th="Price"><%=s.getTacgia()%></td> 
   <td data-th="Quantity"> <%=s.getGia() %>
   </td> 
   <td data-th="Subtotal" class="text-center"><%=s.getMaloai()%></td> 
   <td class="actions" data-th="">
    <button class="btn btn-info btn-sm">Sửa<i class="fa fa-edit"></i>
    </button> 
    <button class="btn btn-danger btn-sm">Xóa<i class="fa fa-trash-o"></i>
    </button>
   </td> 
  </tr> 
 
  </tbody>
  <%} %>
  <tfoot> 
   <tr class="visible-xs"> 
    <td class="text-center"><strong>Tổng 200.000 đ</strong>
    </td> 
   </tr> 
   <tr> 
   
    <td colspan="2" class="hidden-xs"> </td> 
    <td class="hidden-xs text-center"><strong>Tổng tiền 500.000 đ</strong>
    </td> 
    <td><a href="http://hocwebgiare.com/" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
    </td> 
   </tr> 
  </tfoot> 
 </table>
</div>
</body>
</html>