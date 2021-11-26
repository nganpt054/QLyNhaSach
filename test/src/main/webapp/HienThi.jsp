<%@page import="bean.SinVienbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Lopbean"%>
<%@page import="bo.SinhVienbo"%>
<%@page import="bo.Lopbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	Lopbo lbo=new Lopbo();
	SinhVienbo svbo= new SinhVienbo();
	ArrayList<SinVienbean> ds=svbo.getSv();
	
%>
<table align="center" >
    <tr>
    	 <th valign="top" width="200"> Mã lớp </th>
    	<th valign="top" width="500"> Danh sách </th>
    	<th valign="top" width="200"> Tìm kiếm </th>
    </tr>
    
    <tr> 
        <td valign="top" width="200"> 
              <%for(Lopbean lop:lbo.getlop()){%>
               <a href="HienThi.jsp?ml=<%=lop.getMalop() %>"> <%=lop.getTenlop() %>  </a><hr>
              <%} %>
        </td>
     
     	
        <td valign="top" width="500">     
        <%
				String malop = request.getParameter("ml");
				if (malop == null) {
				%>   
               <table align="center" cellspacing="0" width="400" border ="1">
         <%for(SinVienbean sv: ds) {%>
            <tr>
               <td><%=sv.getMasv() %></td>
               <td><%=sv.getHoten() %></td>
               <td><%=sv.getDtb() %></td>
               <td><%=sv.getMalop() %></td>
            </tr>
         <%} %>
          
         <%}
         else
          { %>
         
         <table align="center" cellspacing="0" width="400" border ="1">
         <%ArrayList<SinVienbean> ds2=svbo.Tim(ds, malop);%>
            <%for(SinVienbean sv: ds2) {%>
            <tr>
              <td><%=sv.getMasv() %></td>
               <td><%=sv.getHoten() %></td>
               <td><%=sv.getDtb() %></td>
               <td><%=sv.getMalop() %></td>
               
            </tr>
         <%} %>
        
         <%} %>
         
       </table>
        </td>
       
        
        
        <td valign="top" width="200"> 
        

  
  <form class="form-horizontal" action="HienThi.jsp" >
    <div class="form-group">
    
    <input name="key" value="<%=request.getParameter("key")==null?"":request.getParameter("key")%>" type="search" placeholder="Nhập tên,địa chỉ...">
    <button type="submit" class="btn btn-default">Tìm</button> 
   
     <%String key= request.getParameter("key");	
    		if (key!=null) {
        ArrayList<SinVienbean> ds1=svbo.Tim(ds, key); %>
         
         <table align="center" cellspacing="1" width="400" border ="1">
         <br>
    <b valign="center">HIỂN THỊ KẾT QUẢ</b>
  
                <%for(SinVienbean sv: ds1) {%>
            <tr>
               <td><%=sv.getMasv() %></td>
               <td><%=sv.getHoten() %></td>
               
            </tr>
         <%} %>
       
         <%} %>
       </table>  
  </div>
       
  </form>
    
        </td>
	</tr>
	</table>
</body>
</html>