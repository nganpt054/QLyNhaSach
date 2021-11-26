package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai() throws Exception{
		ArrayList<loaibean> ds=new ArrayList<loaibean>();
		//b1: Kết nối
		DungChung dc= new DungChung();
		dc.KetNoi();
		//b2: lấy dữ liệu về
		String sql="Select * from loai";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		//b3: Duyệt qua các dữ liệu lấy về lưu vào 1 mảng
		while (rs.next()) {
			String maloai=rs.getString("maloai");
			String tenloai=rs.getString("tenloai");
			ds.add(new loaibean(maloai, tenloai));
		}
		//Đóng kết nối
		rs.close();
		dc.cn.close();
		return ds;
		
	}
public void themloai(String maloai,String tenloai) throws Exception{
		
		
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "insert into loai values (?,?) ";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		cmd.setString(2, tenloai);
		cmd.executeUpdate();
	
	
}
	public void xoaLoai(String maloai) throws Exception{
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "delete from loai where maloai=? ";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		cmd.executeUpdate();
	}
}
