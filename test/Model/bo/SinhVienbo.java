package bo;

import java.util.ArrayList;


import bean.SinVienbean;
import dao.SinhViendao;

public class SinhVienbo {
	SinhViendao svdao=new SinhViendao();
public ArrayList<SinVienbean> getSv(){
		
		return svdao.getSv();
	}
public ArrayList<SinVienbean> TimMalop(ArrayList<SinVienbean> ds, String malop){
	ArrayList<SinVienbean> tam= new ArrayList<SinVienbean>();
	for(SinVienbean sv: ds)
		if(sv.getMalop().equals(malop))
			tam.add(sv);
	return tam;
	
}
public ArrayList<SinVienbean> Tim(ArrayList<SinVienbean> ds, String key){
	ArrayList<SinVienbean> tam= new ArrayList<SinVienbean>();
	for(SinVienbean sv: ds)
		if(sv.getMalop().contains(key)||sv.getHoten().contains(key))
			tam.add(sv);
	return tam;
	
}
}
