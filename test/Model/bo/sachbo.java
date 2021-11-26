package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;



public class sachbo {
	sachdao sdao = new sachdao();
	public ArrayList<sachbean> getSach() throws Exception{
		return sdao.getsach();
	}
	public ArrayList<sachbean> TimMaSach(ArrayList<sachbean> ds, String maloai){
		ArrayList<sachbean> tam= new ArrayList<sachbean>();
		for (sachbean sv:ds)
			if(sv.getMaloai().equals(maloai))
				tam.add(sv);
		return tam;
	
	}
	public ArrayList<sachbean> Tim(ArrayList<sachbean> ds, String key){
    	ArrayList<sachbean> tam= new ArrayList<sachbean>();
    	for(sachbean sv: ds)
    		if(sv.getTensach().toLowerCase().contains(key.toLowerCase())||sv.getTacgia().toLowerCase().contains(key.toLowerCase()))
    			tam.add(sv);
    	return tam;
 	
	}
	public int Dem( ArrayList<sachbean> ds, String loaisach){
    	
    	int dem=0;
    	for(sachbean sv: ds)
    		if(sv.getMaloai().contains(loaisach))
    			dem++;
    	return dem;
 	
	}
	public void getxoaSach(String masach) throws Exception{
		   sdao.xoaSach(masach);
}
	public void getthemsach(String masach,String tensach, String tacgia, int gia, String anh, String maloai) throws Exception{
		sdao.themsach(masach, tensach, tacgia, gia, anh, maloai);
	}
	
}


