package dao;

import java.util.ArrayList;
import model.SanPham;

public class GioHangDAO {
				public static ArrayList<SanPham> dsSanPham= new ArrayList<>();
				public static ArrayList<SanPham> gioHang= new ArrayList<>();
				
				public GioHangDAO(){
					dsSanPham.removeAll(dsSanPham);
					SanPham sp1= new SanPham("001", "Alienware 17 R4", "../images/laptop1.jpg", "36.490.000","1" );
					SanPham sp2= new SanPham ("002", "Dell XPS 13 9360", "../images/laptop2.jpg", "22.900.000","1");
					SanPham sp3 = new SanPham("003", "Dell Latitude E7480", "../images/laptop3.jpg", "18.490.000","1" );
					SanPham sp4 = new SanPham("004", "HP Spectre X360 13T", "../images/laptop4.jpg", "29.490.000","1" );
					SanPham sp5 = new SanPham("005", "Dell XPS 13 9365", "../images/laptop5.jpg", "29.900.000","1");
					SanPham sp6 = new SanPham("006", "Lenovo Thinkpad T470", "../images/laptop6.jpg", "18.490.000","1");
					dsSanPham.add(sp1);
					dsSanPham.add(sp2);
					dsSanPham.add(sp3);
					dsSanPham.add(sp4);
					dsSanPham.add(sp5);
					dsSanPham.add(sp6);	
				}
				public boolean kiemTraSanPhamCoTrongGioHangChua(String maSanPham){
					for (int i = 0; i < gioHang.size(); i++) {
						if(gioHang.get(i).getMaSanPham().equals(maSanPham)){
							return true;
						}
					}
					return false;
				}
				
				public boolean themVaoGioHang(String maSanPham){
					boolean kiemTra = kiemTraSanPhamCoTrongGioHangChua(maSanPham);
					for (int i = 0; i <dsSanPham.size(); i++) {
							if(dsSanPham.get(i).getMaSanPham().equals(maSanPham) && kiemTra==false){
								gioHang.add(dsSanPham.get(i));
								return true;
							}
					}
					if(kiemTra==true){
						int index =gioHang.size();
						for (int i = 0; i < index; i++) {
							if(gioHang.get(i).getMaSanPham().equals(maSanPham)){
								gioHang.get(i).setSoLuongMua(Integer.parseInt(gioHang.get(i).getSoLuongMua())+1+"");
								index=i;
							}
						}
					}
					return false;
				}
				public boolean xoaSanPhamRaKkoiGioHang(String maSanPham){
					for (int i = 0; i < gioHang.size(); i++) {
						if(gioHang.get(i).getMaSanPham().equals(maSanPham)){
							gioHang.remove(i);
							return true;
						}
					}
					return false;
				}

				public static ArrayList<SanPham> getDsSanPham() {
					return dsSanPham;
				}

				public static void setDsSanPham(ArrayList<SanPham> dsSanPham) {
					GioHangDAO.dsSanPham = dsSanPham;
				}

				public static ArrayList<SanPham> getGioHang() {
					return gioHang;
				}

				public static void setGioHang(ArrayList<SanPham> gioHang) {
					GioHangDAO.gioHang = gioHang;
				}
				
}
