package bo;




import java.util.ArrayList;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao= new khachhangdao();
	khachhangbean kh=new khachhangbean();
	   public void getkh(String hoten,String diachi, String sodt,String email,String un,String pass) throws Exception{
		    khdao.dangky(hoten, diachi, sodt, email, un, pass);
		    }
	   
	   public khachhangbean ktdn(String makh, String matkhau) throws Exception
	   {
		   
//	    	for(khachhangbean kh: getkh())
//	    		if(kh.getMakh().toLowerCase().equals(makh.toLowerCase())&&kh.getMatkhau().equals(matkhau))
//	    			return kh;
	    	return khdao.getkh(makh, matkhau);
	   }
	   public khachhangbean ktkh(String makh) throws Exception
	   {
		   
//	    	for(khachhangbean kh: getkh())
//	    		if(kh.getMakh().toLowerCase().equals(makh.toLowerCase())&&kh.getMatkhau().equals(matkhau))
//	    			return kh;
	    	return khdao.ktkh(makh);
	   }
	   public ArrayList<khachhangbean> gethtKH() throws Exception{
		   return khdao.htKH();
	   }
	   public void getxoaKH(long makh) throws Exception{
		   khdao.xoaKH(makh);
	   }
	   public void getsuaKH(String hoten,String diachi,String sodt,String email,String tendn,String pass,long makh) throws Exception{
		   khdao.suaKH(hoten, diachi, sodt, email, tendn, pass, makh);
	   }
}
