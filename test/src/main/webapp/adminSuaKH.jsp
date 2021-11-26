<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2 style="text-align:center">CHỈNH SỬA THÔNG TIN</h2><table align="center">

                        <form action="adminSuaKHController" method="post">
                        <tbody>
                        <tr style="height:40px">
                             
                                <td> Mã khách hàng:</td>
                                <td>
                                    <input value="<%=request.getParameter("makh") %>" id="maKH" name="maKH" type="text"  readonly>

                                </td>
                            </tr>
                            <tr style="height:40px">
                             
                                <td> Họ tên khách hàng:</td>
                                <td>
                                    <input id="HotenKH" name="HotenKH" type="text" value="">

                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Tên đăng nhập:</td>
                                <td>
                                    <input id="TenDN" name="TenDN" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>  Mật khẩu:</td>
                                <td>
                                    <input id="Matkhau" name="Matkhau" type="password">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>Mật khẩu nhập lại: </td>
                                <td>
                                    <input id="Matkhaunhatrlai" name="Matkhaunhatrlai" type="password">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Email:</td>
                                <td>
                                    <input id="Email" name="Email" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Địa chỉ:</td>
                                <td>
                                    <input id="Diachi" name="Diachi" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td>Điện thoại:</td>
                                <td>
                                    <input id="Dienthoai" name="Dienthoai" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                <td> Ngày sinh :</td>
                                <td>
                                    <input type="date" name="Ngaysinh">
                                </td>
                            </tr>
                            <tr style="height:40px">
                                
                                <td>
                                    <input type="Submit" value="Chỉnh sửa">
                                    
                                </td>
                                
                                
                            </tr>
                        </tbody>
                        </form >
</body>
</html>