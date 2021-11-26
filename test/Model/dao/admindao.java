package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.adminbean;
import bean.khachhangbean;

public class admindao {
public adminbean ktdn(String un,String pass) throws Exception{
		
		//B1: kết nối
				DungChung dc = new DungChung();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "select * from DangNhap\r\n"
						+ "where TenDangNhap=? and MatKhau=?";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
				//Truyền 01 tham số: un; pas vào cmd
				cmd.setString(1, un);
				cmd.setString(2, pass);
				ResultSet rs = cmd.executeQuery();
				//Nếu rs.next==false return null
				// else: return kh;
					// Tạo ra 1 khachhang:kh và return kh;
				if (rs.next()==false) return null;
				else {
					
					String TenDangNhap=rs.getString("TenDangNhap");
		    		String MatKhau=rs.getString("MatKhau");
		    		String Quyen=rs.getString("Quyen");
		    		adminbean admin=new adminbean(TenDangNhap, MatKhau, Quyen);
		    		rs.close();
			    	dc.cn.close();
		    		return admin;
					}
		    	//Dong ket noi	
	}
}
