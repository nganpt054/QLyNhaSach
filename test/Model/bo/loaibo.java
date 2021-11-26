package bo;
import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;


public class loaibo {
	loaidao ldao= new loaidao();
	   public ArrayList<loaibean> getloai() throws Exception{
		   return ldao.getloai();
	   }
	   public void themloai(String maloai,String tenloai) throws Exception{
		   ldao.themloai(maloai, tenloai);
	   }
	   public void getxoaLoai(String maloai) throws Exception{
		   ldao.xoaLoai(maloai);
	   }
}
