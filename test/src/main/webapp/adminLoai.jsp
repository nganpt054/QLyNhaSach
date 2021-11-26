<%@page import="bean.khachhangbean"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
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
 <%
 response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	ArrayList<loaibean> dsloai =(ArrayList<loaibean>)request.getAttribute("dsloai");
	ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
	%>
<h2 class="text-center">Quản lý loại sách</h2>
<div class="container"> 
 <table id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <td><a href="http://hocwebgiare.com/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Thêm loại</a>
    </td> 
   <tr> 
   <th style="width:20%">STT</th>
    <th style="width:30%">Mã loại</th> 
    <th style="width:30%">Tên loại</th> 
   <th style="width:20%">Tên loại</th> 
   </tr> 
  </thead> 
  <tbody>
   <%
                  int n=dsloai.size();
                  for(int i=0;i<n;i++) {
                    loaibean s=dsloai.get(i);
                  %>
  <tr> 
   <td data-th="Product"> 
    <%=i+1 %>
    </td> 
   <td data-th=""><%=s.getMaloai() %></td> 
  
   
   <td data-th="Price"><%=s.getTenloai()%></td> 
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
