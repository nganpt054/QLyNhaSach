package bo;

import java.util.ArrayList;

import bean.giohangbean;


public class giohangbo {

	public ArrayList<giohangbean> ds=new ArrayList<giohangbean>();

	public void Them(String masach, String tensach,String tacgia, Long gia,Long slmua ){
		
		for(giohangbean g:ds)
			if(g.getMasach().equals(masach))
			{
				g.setSlmua(g.getSlmua()+slmua);
				return ;
			}
		ds.add(new giohangbean(masach, tensach, tacgia, gia, slmua));
	}
	public void xoa(String masach) {
		for(giohangbean g: ds)
			  if(g.getMasach().equals(masach)) {
				  ds.remove(g);break;
			  }
	}
	public void SuaSoluong(String masach, long soluong) {
		for (giohangbean gh : ds) {
			if (gh.getMasach().equals(masach)) {
				gh.setSlmua(soluong);
				break;
			}
		}
	}
	public void XoaHet() {
		ds.removeAll(ds);
	}
	public Long TongTien() {
		long s=(long)0;
		for(giohangbean g: ds)
			s+=g.getThanhtien();
		return s;
	}
public int Dem(){
    	
    	int dem=0;
    	for(giohangbean gh: ds)
    		
    			dem++;
    	return dem;
 	
	}
}
