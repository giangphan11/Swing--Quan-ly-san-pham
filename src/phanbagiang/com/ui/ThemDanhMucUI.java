package phanbagiang.com.ui;

import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

import phanbagiang.com.model.DanhMuc;

public class ThemDanhMucUI extends JDialog {

	JTextField txtMa, txtTen;
	JButton btnThem;

	public ThemDanhMucUI(String title) {
		this.setTitle(title);
		addControls();
		addEvents();
	}
	private void addEvents() {
		btnThem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				try {
					
					DanhMuc gr= QLSanPhamUI.em.find(DanhMuc.class, txtMa.getText());
					if(gr==null) {
						QLSanPhamUI.et.begin();
						DanhMuc dm= new DanhMuc();
						dm.setMaDm(txtMa.getText());
						dm.setTenDM(txtTen.getText());
						QLSanPhamUI.em.persist(dm);
						QLSanPhamUI.et.commit();
						JOptionPane.showMessageDialog(null, "Thêm danh mục thành công");
						dispose();
					}
					else {
						JOptionPane.showMessageDialog(null, "Không thể thêm danh mục");
						return;
					}
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

		JPanel pnMa= new JPanel();
		con.add(pnMa);
		pnMa.setLayout(new FlowLayout());
		JLabel lblMa= new JLabel("Mã:");
		txtMa= new JTextField(25);
		pnMa.add(lblMa);
		pnMa.add(txtMa);

		JPanel pnTen= new JPanel();
		pnTen.setLayout(new FlowLayout());
		con.add(pnTen);
		JLabel lblTen= new JLabel("Tên:");
		txtTen= new JTextField(25);
		pnTen.add(lblTen);
		pnTen.add(txtTen);

		JPanel pnButton= new JPanel();
		pnButton.setLayout(new FlowLayout());
		con.add(pnButton);
		btnThem= new JButton("OK");
		pnButton.add(btnThem);
		lblMa.setPreferredSize(lblTen.getPreferredSize());
	}
	public void showWIndow() {
		this.setSize(380, 150);
		this.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		this.setLocationRelativeTo(null);
		this.setModal(true);
		this.setVisible(true);
	}
}
