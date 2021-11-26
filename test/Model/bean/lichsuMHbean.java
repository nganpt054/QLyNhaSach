package bean;

public class lichsuMHbean {
	private long makh;
	private String hoten;
	private String tensach;
	private int  SoLuongMua;
	private int gia;
	private int ThanhTien;
	private String damua;
	public lichsuMHbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public lichsuMHbean(long makh1, String hoten, String tensach, int SoLuongMua, int gia, int ThanhTien, String damua) {
		super();
		this.makh = makh1;
		this.hoten = hoten;
		this.tensach = tensach;
		this.SoLuongMua= SoLuongMua;
		this.gia = gia;
		this.ThanhTien = ThanhTien;
		this.damua = damua;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public int getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getThanhTien() {
		return ThanhTien;
	}
	public void setThanhTien(int thanhTien) {
		ThanhTien = thanhTien;
	}
	public String getDamua() {
		return damua;
	}
	public void setDamua(String damua) {
		this.damua = damua;
	}

	
}
