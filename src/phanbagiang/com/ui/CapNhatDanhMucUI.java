package phanbagiang.com.ui;

import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

import phanbagiang.com.model.DanhMuc;

public class CapNhatDanhMucUI extends JDialog {
	private String maDM;
	JTextField txtTen;
	JButton btnCapNhat;
	
	public void setMaDM(String maDM) {
		this.maDM = maDM;
	}
	
	public String getMaDM() {
		return maDM;
	}

	public CapNhatDanhMucUI(String title) {
		this.setTitle(title);
		addControls();
		addEvents();
	}
	private void addEvents() {
		btnCapNhat.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					QLSanPhamUI.et.begin();
					DanhMuc dm= QLSanPhamUI.em.find(DanhMuc.class, maDM);
					dm.setTenDM(txtTen.getText());
					QLSanPhamUI.em.merge(dm);
					QLSanPhamUI.et.commit();
					JOptionPane.showMessageDialog(null, "Cập nhật danh mục thành công !");
					dispose();
				}
				catch(Exception ex) {
					ex.printStackTrace();
				}
			}
		});
	}
	private void addControls() {
		Container con= getContentPane();
		con.setLayout(new BoxLayout(con, BoxLayout.Y_AXIS));
		JPanel pnTen= new JPanel();
		pnTen.setLayout(new FlowLayout());
		JLabel lblTen= new JLabel("Tên mới:");
		txtTen= new JTextField(25);
		pnTen.add(lblTen);
		pnTen.add(txtTen);
		con.add(pnTen);
		
		JPanel pnButton= new JPanel();
		pnButton.setLayout(new FlowLayout());
		btnCapNhat= new JButton("Cập nhật");
		pnButton.add(btnCapNhat);
		con.add(pnButton);
	}
	public void showWIndow() {
		this.setSize(370, 120);
		this.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		this.setLocationRelativeTo(null);
		this.setModal(true);
		this.setVisible(true);
	}
}
