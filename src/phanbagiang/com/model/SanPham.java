package phanbagiang.com.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the SanPham database table.
 * 
 */
@Entity
@NamedQuery(name="SanPham.findAll", query="SELECT s FROM SanPham s")
public class SanPham implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaSP")
	private String maSP;

	@Column(name="GiaSP")
	private int giaSP;

	@Column(name="MoTa")
	private String moTa;

	@Column(name="SoLuong")
	private int soLuong;

	@Column(name="TenSP")
	private String tenSP;

	//bi-directional many-to-one association to DanhMuc
	@ManyToOne
	@JoinColumn(name="MaDM")
	private DanhMuc danhMuc;

	public SanPham() {
	}

	public String getMaSP() {
		return this.maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public int getGiaSP() {
		return this.giaSP;
	}

	public void setGiaSP(int giaSP) {
		this.giaSP = giaSP;
	}

	public String getMoTa() {
		return this.moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public int getSoLuong() {
		return this.soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getTenSP() {
		return this.tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public DanhMuc getDanhMuc() {
		return this.danhMuc;
	}

	public void setDanhMuc(DanhMuc danhMuc) {
		this.danhMuc = danhMuc;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.tenSP;
	}
}