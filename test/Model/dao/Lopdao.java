package dao;

import java.util.ArrayList;

import bean.Lopbean;

public class Lopdao {

	public ArrayList<Lopbean> getlop(){
		ArrayList<Lopbean> ds= new ArrayList<Lopbean>();
		ds.add(new Lopbean("K42A","CNTT K42A"));
		ds.add(new Lopbean("K42B","CNTT K42B"));
		ds.add(new Lopbean("K42C","CNTT K42C"));
		ds.add(new Lopbean("K42D","CNTT K42D"));
		ds.add(new Lopbean("K42E","CNTT K42E"));
		return ds;
	}
}
