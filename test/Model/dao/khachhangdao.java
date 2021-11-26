package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;
import bean.sachbean;

public class khachhangdao {
	public khachhangbean getkh(String un,String pass) throws Exception{
		
		//B1: kết nối
				DungChung dc = new DungChung();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "Select * from KhachHang where tendn=? and pass=?";
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
					
					String makh=rs.getString("makh");
		    		String hoten=rs.getString("hoten");
		    		String diachi=rs.getString("diachi");
		    		String matkhau=rs.getString("pass");
		    		khachhangbean kh=new khachhangbean(makh, hoten, diachi, matkhau);
		    		rs.close();
			    	dc.cn.close();
		    		return kh;
					}
		    	//Dong ket noi	
	}
	public khachhangbean ktkh(String un) throws Exception{
	
		//B1: kết nối
				DungChung dc = new DungChung();
				dc.KetNoi();
				//b2: lay du lieu ve
				String sql = "Select * from KhachHang where tendn=? ";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
				//Truyền 01 tham số: un; pas vào cmd
				cmd.setString(1, un);
				ResultSet rs = cmd.executeQuery();
				//Nếu rs.next==false return null
				// else: return kh;
					// Tạo ra 1 khachhang:kh và return kh;
				while (rs.next()) 
			 {
					
					String makh=rs.getString("makh");
		    		String hoten=rs.getString("hoten");
		    		String diachi=rs.getString("diachi");
		    		String matkhau=rs.getString("pass");
		    		khachhangbean kh=new khachhangbean(makh, hoten, diachi, matkhau);
		    		rs.close();
			    	dc.cn.close();
		    		return kh;
				}
				return null;
		    	//Dong ket noi	
	}
	
	public void dangky(String hoten,String diachi, String sodt,String email,String un,String pass )throws Exception {
		
		
			DungChung dc = new DungChung();
			dc.KetNoi();
			String sql = "insert into KhachHang values (?,?,?,?,?,?) ";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			cmd.setString(1, hoten);
			cmd.setString(2, diachi);
			cmd.setString(3, sodt);
			cmd.setString(4, email);
			cmd.setString(5, un);
			cmd.setString(6, pass);
			cmd.executeUpdate();
		
		
	}
public ArrayList<khachhangbean> htKH() throws Exception{
		
	
	   	
		ArrayList<khachhangbean> ds=new ArrayList<khachhangbean>();
		//B1: kết nối
		DungChung dc = new DungChung();
		dc.KetNoi();
		//b2: lay du lieu ve
		String sql = "Select *from KhachHang";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		//b3: duyet qua cac du lieu lay ve de luu vao 1 mang
		while(rs.next()) {
    		int makh=rs.getInt("makh");
    		String makh1=Integer.toString(makh);
    		String hoten=rs.getString("tendn");
    		String diachi=rs.getString("diachi");
    		String matkhau=rs.getString("pass");
    		ds.add(new khachhangbean(makh1, hoten, diachi, matkhau));
    	}
    	//Dong ket noi
    	rs.close();
    	dc.cn.close();
 
    	 return ds;
	}
public void suaKH (String hoten,String diachi,String sodt,String email,String tendn,String pass,long makh) throws Exception{
	DungChung dc = new DungChung();
	dc.KetNoi();
	String sql = "update  KhachHang" 
			+ "set hoten=?, diachi=?, sodt=?,email=?,tendn=?,pass=?"
			+ " where makh=? ";
			
	PreparedStatement cmd = dc.cn.prepareStatement(sql);
	
	cmd.setString(1, hoten);
	cmd.setString(2, diachi);
	cmd.setString(3, sodt);
	cmd.setString(4, email);
	cmd.setString(5, tendn);
	cmd.setString(6, pass);
	cmd.setLong(7, makh);
	cmd.executeUpdate();
}
	public void xoaKH(long makh) throws Exception{
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "delete from KhachHang where makh=? ";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		cmd.executeUpdate();
	}
	

}
