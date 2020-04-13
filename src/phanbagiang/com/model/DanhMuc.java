package phanbagiang.com.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the DanhMuc database table.
 * 
 */
@Entity
@NamedQuery(name="DanhMuc.findAll", query="SELECT d FROM DanhMuc d")
public class DanhMuc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaDm")
	private String maDm;

	@Column(name="TenDM")
	private String tenDM;

	//bi-directional many-to-one association to SanPham
	@OneToMany(mappedBy="danhMuc")
	private List<SanPham> sanPhams;

	public DanhMuc() {
	}

	public String getMaDm() {
		return this.maDm;
	}

	public void setMaDm(String maDm) {
		this.maDm = maDm;
	}

	public String getTenDM() {
		return this.tenDM;
	}

	public void setTenDM(String tenDM) {
		this.tenDM = tenDM;
	}

	public List<SanPham> getSanPhams() {
		return this.sanPhams;
	}

	public void setSanPhams(List<SanPham> sanPhams) {
		this.sanPhams = sanPhams;
	}

	public SanPham addSanPham(SanPham sanPham) {
		getSanPhams().add(sanPham);
		sanPham.setDanhMuc(this);

		return sanPham;
	}

	public SanPham removeSanPham(SanPham sanPham) {
		getSanPhams().remove(sanPham);
		sanPham.setDanhMuc(null);

		return sanPham;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.tenDM;
	}
}