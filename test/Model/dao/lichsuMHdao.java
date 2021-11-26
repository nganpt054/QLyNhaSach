package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.lichsuMHbean;
import bean.sachbean;

public class lichsuMHdao {
public ArrayList<lichsuMHbean> getls(long makh) throws Exception{
		
	
	   	
		ArrayList<lichsuMHbean> ds=new ArrayList<lichsuMHbean>();
		//B1: kết nối
		DungChung dc = new DungChung();
		dc.KetNoi();
		//b2: lay du lieu ve
		String sql = "select * from View_1\r\n"
				+ "where makh=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		//b3: duyet qua cac du lieu lay ve de luu vao 1 mang
		while(rs.next()) {
    		long makh1=rs.getLong("makh");
    		String hoten=rs.getString("hoten");
    		String tensach=rs.getString("tensach");
    		int SoLuongMua=rs.getInt("SoLuongMua");
    		int gia=rs.getInt("gia");
    		int ThanhTien=rs.getInt("ThanhTien");
    		String damua=rs.getString("damua");
    		ds.add(new lichsuMHbean(makh1, hoten, tensach, SoLuongMua, gia, ThanhTien, damua));
    	}
    	//Dong ket noi
    	rs.close();
    	dc.cn.close();
 
    	 return ds;
	}
public ArrayList<lichsuMHbean> getls() throws Exception{
	
	
   	
	ArrayList<lichsuMHbean> ds=new ArrayList<lichsuMHbean>();
	//B1: kết nối
	DungChung dc = new DungChung();
	dc.KetNoi();
	//b2: lay du lieu ve
	String sql = "select * from View_1\r\n";
	
	PreparedStatement cmd = dc.cn.prepareStatement(sql);
	
	ResultSet rs = cmd.executeQuery();
	//b3: duyet qua cac du lieu lay ve de luu vao 1 mang
	while(rs.next()) {
		long makh1=rs.getLong("makh");
		String hoten=rs.getString("hoten");
		String tensach=rs.getString("tensach");
		int SoLuongMua=rs.getInt("SoLuongMua");
		int gia=rs.getInt("gia");
		int ThanhTien=rs.getInt("ThanhTien");
		String damua=rs.getString("damua");
		ds.add(new lichsuMHbean(makh1, hoten, tensach, SoLuongMua, gia, ThanhTien, damua));
	}
	//Dong ket noi
	rs.close();
	dc.cn.close();

	 return ds;
}
}
