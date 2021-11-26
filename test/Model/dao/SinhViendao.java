package dao;

import java.util.ArrayList;

import bean.SinVienbean;

public class SinhViendao {
	  public ArrayList<SinVienbean> getSv(){
	    	 ArrayList<SinVienbean> ds= new ArrayList<SinVienbean>();
	    	 ds.add(new SinVienbean("Sv1", "Nguyễn Nam Hải 1", 7.5, "K42A"));
	    	 ds.add(new SinVienbean("Sv2", "Nguyễn Nam Hải 2", 7.5, "K42A"));
	    	 ds.add(new SinVienbean("Sv3", "Nguyễn Nam Hải 3", 7.5, "K42A"));
	    	 ds.add(new SinVienbean("Sv4", "Nguyễn Nam Hải 4", 7.5, "K42B"));
	  	 ds.add(new SinVienbean("Sv5", "Nguyễn Nam Hải 5", 7.5, "K42B"));
	    	 ds.add(new SinVienbean("Sv6", "Nguyễn Nam Hải 6", 7.5, "K42C"));
	    	 ds.add(new SinVienbean("Sv7", "Nguyễn Nam Hải 7", 7.5, "K42D"));
	    	 ds.add(new SinVienbean("Sv8", "Nguyễn Nam Hải 8", 7.5, "K42D"));
	    	 return ds;
	     }
	    	 
}
