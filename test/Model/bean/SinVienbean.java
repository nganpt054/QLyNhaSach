package bean;

public class SinVienbean {
	private String masv;
	private String hoten;
	private double dtb;
	private String malop;
	public SinVienbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SinVienbean(String masv, String hoten, double d, String malop) {
		super();
		this.masv = masv;
		this.hoten = hoten;
		this.dtb = d;
		this.malop = malop;
	}
	public String getMasv() {
		return masv;
	}
	public void setMasv(String masv) {
		this.masv = masv;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public double getDtb() {
		return dtb;
	}
	public void setDtb(double dtb) {
		this.dtb = dtb;
	}
	public String getMalop() {
		return malop;
	}
	public void setMalop(String malop) {
		this.malop = malop;
	}
	public String KetQua()
	{
		return dtb>=5?"Đậu":"Rớt";
	}
}
