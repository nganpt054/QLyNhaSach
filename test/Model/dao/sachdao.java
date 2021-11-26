package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;


import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach() throws Exception{
		
	
	   	
		ArrayList<sachbean> ds=new ArrayList<sachbean>();
		//B1: kết nối
		DungChung dc = new DungChung();
		dc.KetNoi();
		//b2: lay du lieu ve
		String sql = "Select *from sach";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		//b3: duyet qua cac du lieu lay ve de luu vao 1 mang
		while(rs.next()) {
    		String masach=rs.getString("masach");
    		String tensach=rs.getString("tensach");
    		String tacgia=rs.getString("tacgia");
    		Long gia=rs.getLong("gia");
    		String anh=rs.getString("anh");
    		String maloai=rs.getString("maloai");
    		ds.add(new sachbean(masach, tensach, tacgia, gia, anh, maloai));
    	}
    	//Dong ket noi
    	rs.close();
    	dc.cn.close();
 
    	 return ds;
	}
	public void xoaSach(String masach) throws Exception{
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "delete from sach where masach=? ";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		cmd.executeUpdate();
	}
public void themsach(String masach,String tensach, String tacgia,int gia, String anh, String maloai) throws Exception{
		
		
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "insert into sach(masach,tensach,tacgia,gia,anh,maloai) values (?,?,?,?,?,?) ";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		cmd.setString(2, tensach);
		cmd.setString(3, tacgia);
		cmd.setInt(4, gia);
		cmd.setString(5, anh);
		cmd.setString(6, maloai);
		cmd.executeUpdate();
	
	
}
}
