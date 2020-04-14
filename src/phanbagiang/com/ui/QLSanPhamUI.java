package phanbagiang.com.ui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;
import java.util.Vector;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableModel;

import phanbagiang.com.model.DanhMuc;
import phanbagiang.com.model.SanPham;

public class QLSanPhamUI extends JFrame {

	static EntityManagerFactory emf=null;
	static EntityManager em= null;
	static EntityTransaction et=null;

	JList<DanhMuc>listDanhMuc;
	JButton btnNewDM, btnUpdateDM, btnRemoveDM;

	DefaultTableModel dtm;
	JTable tblSanPham;

	JComboBox<DanhMuc>cboDanhMuc;
	JTextField txtMaSP, txtTenSP, txtGiaSP, txtSoLuong;
	JTextArea txtMoTa;

	JButton btnNewSP, btnUpdateSP, btnRemoveSP;

	ArrayList<DanhMuc>dsDM=null;
	DanhMuc danhMucSelected=null;

	ArrayList<SanPham>dsSP;


	public QLSanPhamUI(String title) {
		this.setTitle(title);
		
		addControls();
		addEvents();
		ketNoiDuLieu();
		hienThiDanhMuc();
		hienThiSanPhamLenBang();
		hienThiComboBox();

	}
	private void hienThiSanPhamLenBang() {
		try {
			if(danhMucSelected==null)return;
			Query query= em.createQuery("from SanPham as sp where sp.danhMuc.maDm=:bien1");
			query.setParameter("bien1", danhMucSelected.getMaDm());
			ArrayList<SanPham>danhSachSP= (ArrayList<SanPham>) query.getResultList();
			dtm.setRowCount(0);
			for (SanPham sp :danhSachSP) {
				Vector<Object>vec= new Vector<Object>();
				vec.add(sp.getMaSP());
				vec.add(sp.getTenSP());
				vec.add(sp.getGiaSP());
				vec.add(sp.getSoLuong());
				vec.add(sp.getMoTa());
				dtm.addRow(vec);
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	private void hienThiComboBox() {
		Query query= em.createQuery("From DanhMuc");
		ArrayList<DanhMuc>dsDM= (ArrayList<DanhMuc>) query.getResultList();
		cboDanhMuc.removeAllItems();
		for(DanhMuc x :dsDM) {
			cboDanhMuc.addItem(x);
		}
	}
	private void ketNoiDuLieu() {
		try {
			emf= Persistence.createEntityManagerFactory("ProjectQLSanPham_JPA");
			em=emf.createEntityManager();
			et=em.getTransaction();
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	private void hienThiDanhMuc() {
		try {
			Query query= em.createQuery("From DanhMuc");
			ArrayList<DanhMuc>dsDM= (ArrayList<DanhMuc>) query.getResultList();
			Vector<DanhMuc>vecDanhMuc= new Vector<DanhMuc>();
			for(DanhMuc x :dsDM) {
				DanhMuc dm= new DanhMuc();
				dm.setMaDm(x.getMaDm());
				dm.setTenDM(x.getTenDM());
				vecDanhMuc.add(dm);
			}
			listDanhMuc.removeAll();
			listDanhMuc.setListData(vecDanhMuc);
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	public boolean kiemTraMaSPTonTai(String ma) {
		try {
			SanPham sp= em.find(SanPham.class, ma);
			if(sp==null) {
				return true;
			}
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}
	private void addControls() {
		Container con= getContentPane();
		con.setLayout(new BorderLayout());

		JPanel pnTitle= new JPanel();
		pnTitle.setLayout(new FlowLayout());
		JLabel lblTitle= new JLabel("Quản lý sản phẩm");
		lblTitle.setFont(new Font("arial", Font.BOLD, 32));
		lblTitle.setForeground(Color.BLUE);
		pnTitle.add(lblTitle);
		con.add(pnTitle,BorderLayout.NORTH);

		JPanel pnLeft= new JPanel();
		JPanel pnRight= new JPanel();
		JSplitPane spMain= new JSplitPane(JSplitPane.HORIZONTAL_SPLIT,
				pnLeft, pnRight);
		con.add(spMain, BorderLayout.CENTER);

		pnLeft.setPreferredSize(new Dimension(300,0));
		pnLeft.setLayout(new BorderLayout());
		listDanhMuc= new JList<DanhMuc>();
		TitledBorder ttBdList= new TitledBorder(BorderFactory.createLineBorder(Color.RED, 2),
				"Danh mục sản phẩm");
		listDanhMuc.setBorder(ttBdList);
		JScrollPane scListDM= new JScrollPane(listDanhMuc,
				JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
				JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		pnLeft.add(scListDM,BorderLayout.CENTER);

		JPanel pnButtonLeft= new JPanel();
		pnButtonLeft.setLayout(new FlowLayout());
		pnLeft.add(pnButtonLeft,BorderLayout.SOUTH);
		btnNewDM= new JButton("New");
		btnUpdateDM= new JButton("Update");
		btnRemoveDM= new JButton("Remove");
		pnButtonLeft.add(btnNewDM);
		pnButtonLeft.add(btnUpdateDM);
		pnButtonLeft.add(btnRemoveDM);

		pnRight.setLayout(new BorderLayout());
		JPanel pnTT= new JPanel();
		pnTT.setLayout(new FlowLayout());
		JLabel lblTT= new JLabel("Thông tin chi tiết");
		pnTT.add(lblTT);
		pnRight.add(pnTT,BorderLayout.NORTH);

		dtm= new DefaultTableModel();
		dtm.addColumn("Mã sản phẩm");
		dtm.addColumn("Tên sản phẩm");
		dtm.addColumn("Giá");
		dtm.addColumn("Số lượng");
		dtm.addColumn("Mô tả");
		tblSanPham=new JTable(dtm);
		JScrollPane scTbl= new JScrollPane(tblSanPham,
				JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,
				JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
		pnRight.add(scTbl,BorderLayout.CENTER);

		JPanel pnBotOfRight= new JPanel();
		pnRight.add(pnBotOfRight,BorderLayout.SOUTH);
		pnBotOfRight.setLayout(new BoxLayout(pnBotOfRight, BoxLayout.Y_AXIS));

		JPanel pnDM= new JPanel();
		pnDM.setLayout(new FlowLayout());
		pnBotOfRight.add(pnDM);
		JLabel lblDM= new JLabel("Danh mục:");
		cboDanhMuc= new JComboBox<DanhMuc>();
		cboDanhMuc.setPreferredSize(new Dimension(250, 25));
		pnDM.add(lblDM);
		pnDM.add(cboDanhMuc);

		JPanel pnMa= new JPanel();
		pnMa.setLayout(new FlowLayout());
		pnBotOfRight.add(pnMa);
		JLabel lblMa= new JLabel("Mã SP:");
		txtMaSP= new JTextField(22);
		pnMa.add(lblMa);
		pnMa.add(txtMaSP);

		JPanel pnTen= new JPanel();
		pnTen.setLayout(new FlowLayout());
		pnBotOfRight.add(pnTen);
		JLabel lblTen= new JLabel("Tên SP:");
		txtTenSP= new JTextField(22);
		pnTen.add(lblTen);
		pnTen.add(txtTenSP);

		JPanel pnGia= new JPanel();
		pnGia.setLayout(new FlowLayout());
		pnBotOfRight.add(pnGia);
		JLabel lblGia= new JLabel("Giá SP:");
		txtGiaSP= new JTextField(22);
		pnGia.add(lblGia);
		pnGia.add(txtGiaSP);

		JPanel pnSoLuong= new JPanel();
		pnSoLuong.setLayout(new FlowLayout());
		pnBotOfRight.add(pnSoLuong);
		JLabel lblSoLuong= new JLabel("Số lượng SP:");
		txtSoLuong= new JTextField(22);
		pnSoLuong.add(lblSoLuong);
		pnSoLuong.add(txtSoLuong);

		JPanel pnMoTa= new JPanel();
		pnMoTa.setLayout(new FlowLayout());
		pnBotOfRight.add(pnMoTa);
		JLabel lblMoTa= new JLabel("Mô tả SP:");
		txtMoTa= new JTextArea(3, 22);
		JScrollPane scMoTa= new JScrollPane(txtMoTa,
				JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
				JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		txtMoTa.setWrapStyleWord(true);
		txtMoTa.setLineWrap(true);
		pnMoTa.add(lblMoTa);
		pnMoTa.add(scMoTa);

		JPanel pnBT= new JPanel();
		pnBT.setLayout(new FlowLayout());
		pnBotOfRight.add(pnBT);
		btnNewSP= new JButton("New");
		btnUpdateSP= new JButton("Update");
		btnRemoveSP= new JButton("Remove");
		pnBT.add(btnNewSP);
		pnBT.add(btnUpdateSP);
		pnBT.add(btnRemoveSP);

		lblMa.setPreferredSize(lblSoLuong.getPreferredSize());
		lblTen.setPreferredSize(lblSoLuong.getPreferredSize());
		lblDM.setPreferredSize(lblSoLuong.getPreferredSize());
		lblMoTa.setPreferredSize(lblSoLuong.getPreferredSize());
		lblGia.setPreferredSize(lblSoLuong.getPreferredSize());
	}
	private void addEvents() {
		listDanhMuc.addMouseListener(new MouseListener() {

			@Override
			public void mouseReleased(MouseEvent e) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseClicked(MouseEvent e) {
				if(listDanhMuc.getSelectedValue()==null)return;
				danhMucSelected=listDanhMuc.getSelectedValue();
				if(danhMucSelected==null)return;
				else {
					hienThiSanPhamLenBang();
				}
			}
		});
		tblSanPham.addMouseListener(new MouseListener() {

			@Override
			public void mouseReleased(MouseEvent arg0) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mousePressed(MouseEvent arg0) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseExited(MouseEvent arg0) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseEntered(MouseEvent arg0) {
				// TODO Auto-generated method stub

			}

			@Override
			public void mouseClicked(MouseEvent arg0) {
				int row= tblSanPham.getSelectedRow();
				if(row==-1)return;
				else {
					// hiển thị lên bảng
					txtMaSP.setText(tblSanPham.getValueAt(row, 0).toString());
					txtTenSP.setText(tblSanPham.getValueAt(row, 1).toString());
					txtGiaSP.setText(tblSanPham.getValueAt(row, 2).toString());
					txtSoLuong.setText(tblSanPham.getValueAt(row, 3).toString());
					txtMoTa.setText(tblSanPham.getValueAt(row, 4).toString());
				}
			}
		});

		//=============== btnNewSP ================
		btnNewSP.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				txtMaSP.setText("");
				txtTenSP.setText("");
				txtGiaSP.setText("");
				txtSoLuong.setText("");
				txtMoTa.setText("");
				txtMaSP.requestFocus(true);
			}
		});
		btnUpdateSP.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				DanhMuc dmChon= (DanhMuc) cboDanhMuc.getSelectedItem();
				if(kiemTraMaSPTonTai(txtMaSP.getText())==true) {
					et.begin();
					SanPham s= new SanPham();
					s.setMaSP(txtMaSP.getText());
					s.setTenSP(txtTenSP.getText());
					s.setGiaSP(Integer.parseInt(txtGiaSP.getText()));
					s.setSoLuong(Integer.parseInt(txtSoLuong.getText()));
					s.setMoTa(txtMoTa.getText());
					s.setDanhMuc(dmChon);
					em.persist(s);
					et.commit();
					JOptionPane.showMessageDialog(null, "Thêm sản phẩm thành công !");
					hienThiSanPhamLenBang();
				}
				else {
					int Cf= JOptionPane.showConfirmDialog(null, "Mã "+txtMaSP.getText()+" đã tồn tại, bạn có muốn cập nhật?",
							"Xác nhận cập nhật sản phẩm",JOptionPane.YES_NO_OPTION);
					if(Cf==JOptionPane.NO_OPTION) {
						return;
					}
					else {
						try {
							et.begin();
							SanPham s= em.find(SanPham.class, txtMaSP.getText());
							s.setTenSP(txtTenSP.getText());
							s.setGiaSP(Integer.parseInt(txtGiaSP.getText()));
							s.setSoLuong(Integer.parseInt(txtSoLuong.getText()));
							s.setMoTa(txtMoTa.getText());
							em.merge(s);
							et.commit();
							JOptionPane.showMessageDialog(null, "Cập nhật sản phẩm thành công !");
							hienThiSanPhamLenBang();
						}
						catch(Exception ex) {
							ex.printStackTrace();
						}
					}
				}
			}
		});
		btnRemoveSP.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				int cf= JOptionPane.showConfirmDialog(null, "Bạn có chắc xóa mã "+txtMaSP.getText()+" không?",
						"Xác nhận xóa", JOptionPane.OK_CANCEL_OPTION);
				if(cf== JOptionPane.CANCEL_OPTION)
				{
					return;
				}
				else {
					try {
						et.begin();
						SanPham sp= em.find(SanPham.class, txtMaSP.getText());
						em.remove(sp);
						et.commit();
						JOptionPane.showMessageDialog(null, "Xóa sản phẩm thành công !");
						hienThiSanPhamLenBang();
					}
					catch(Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		});

		//==================== DANH MUC =================
		btnNewDM.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				ThemDanhMucUI ui = new ThemDanhMucUI("Thêm mới danh mục");
				ui.showWIndow();
				hienThiDanhMuc();
				hienThiComboBox();
			}
		});
		btnUpdateDM.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				if(danhMucSelected==null) {
					return;
				}
				else {
					try {
						CapNhatDanhMucUI ui= new CapNhatDanhMucUI("Cập nhật danh mục");
						//System.out.println(danhMucSelected.getMaDm());
						ui.setMaDM(danhMucSelected.getMaDm());
						ui.showWIndow();
						hienThiDanhMuc();
						hienThiComboBox();

					}
					catch(Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		});
		btnRemoveDM.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				if(danhMucSelected==null)return;
				else {
					int Cf= JOptionPane.showConfirmDialog(null, "Bạn có chắc xóa "+danhMucSelected.getTenDM()+" không?",
							"Xác nhận xóa",JOptionPane.OK_CANCEL_OPTION);
					if(Cf==JOptionPane.CANCEL_OPTION)return;
					else {
						try {
							et.begin();
							DanhMuc dm= em.find(DanhMuc.class, danhMucSelected.getMaDm());
							//if (dm==null)return;
							em.remove(dm);
							et.commit();
							JOptionPane.showMessageDialog(null, "Đã xóa danh mục !");
							hienThiDanhMuc();
							hienThiComboBox();
						}
						catch(Exception ex) {
							ex.printStackTrace();
						}
					}
				}
			}
		});
	}
	public void showWIndow() {
		this.setSize(800, 650);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setLocationRelativeTo(null);
		this.setVisible(true);
	}
}
