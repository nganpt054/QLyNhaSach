<%@page import="bean.lichsuMHbean"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 <h2 style="text-align:center; color: red">LỊCH SỬ MUA HÀNG</h2><table align="center">
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
      <th scope="col">Xác nhận đã mua</th>
    </tr>
  </thead>
  
       		<%for(lichsuMHbean ls:ds){%>
       			<tr>
       			<td>
        		<br>
                             <%=ls.getMakh()%> </td>                            <td> <%=ls.getTensach()%> </td>
                             <td><%=ls.getSoLuongMua()%> </td>
                            <td> <%=ls.getGia()%> </td>
                             <td><%=ls.getThanhTien()%> </td>
                            <td> <%=ls.getDamua() %> </td>
                            <td><form action="xacnhandamuaController" method="post">
                            <input  type="submit" name="choose" value="Xác nhận">
                               </form> 
                            </td>
     						
        		</td>
        		</tr>
            <%}%>
            
         
       		</table>
        </td>
        </tr>
        </table>           
</body>
</html>