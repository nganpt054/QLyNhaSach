package bo;

import bean.adminbean;
import dao.admindao;

public class adminbo {
		admindao ad=new admindao();
		public adminbean getktdn(String un,String pass) throws Exception {
			return ad.ktdn(un, pass);
		}
}
