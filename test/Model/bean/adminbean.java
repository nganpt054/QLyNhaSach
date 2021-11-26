package bean;

public class adminbean {
	public String TenDangNhap ;
	public String MatKhau;
	public String Quyen;
	public adminbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public adminbean(String tenDangNhap, String matKhau, String quyen) {
		super();
		this.TenDangNhap = tenDangNhap;
		this.MatKhau = matKhau;
		this.Quyen = quyen;
	}
	public String getTenDangNhap() {
		return TenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		this.TenDangNhap = tenDangNhap;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		this.MatKhau = matKhau;
	}
	public String getQuyen() {
		return Quyen;
	}
	public void setQuyen(String quyen) {
		this.Quyen = quyen;
	}
	
	
}
