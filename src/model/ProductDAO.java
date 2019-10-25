package model;

import java.util.ArrayList;

public class ProductDAO {
	
	public static ArrayList<Product> gioHang =getGioHang();
	static ArrayList<Product> list = new ArrayList<Product>();
	public static ArrayList<Product> getListProduct() {
		if(ProductDAO.list.size()==0){
		list.add(new Product("001", "Alienware 17 R4", "../images/laptop1.jpg",36490000.0,15.0, "acer" ));
		list.add(new Product("002", "Dell XPS 13 9360", "../images/laptop2.jpg", 22900000.0,16.0, "acer" ));
		list.add(new Product("003", "Dell Latitude E7480", "../images/laptop3.jpg", 18490000.0,10.0, "dell" ));
		list.add(new Product("004", "HP Spectre X360 13T", "../images/laptop4.jpg", 29490000.0,20.0, "dell" ));
		list.add(new Product("005", "Dell XPS 13 9365", "../images/laptop5.jpg", 29900000.0,5.0 ,"dell"));
		list.add(new Product("006", "Lenovo Thinkpad T470", "../images/laptop6.jpg", 18490000.0,7.0,"dell" ));
		
	}
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println(list.get(i));
//		}
	
		return ProductDAO.list;
	}
	
	public static ArrayList<Product> getListProductByCate(String i) {
		ArrayList<Product> listproByCate =  getListProduct();
		for (Product product : listproByCate) {
			if (!(product.getLoaiHang().equalsIgnoreCase(i))) listproByCate.remove(product); 
		}
		return listproByCate;
	}
	
	
//	public boolean kiemTraSanPhamCoTrongGioHangChua(int maSanPham) {
//		for (int i = 0; i < gioHang.size(); i++) {
//			if (gioHang.get(i).getId() == maSanPham) {
//				return true;
//			}
//		}
//		return false;
//	}

//	public boolean themVaoGioHang(int maSanPham) {
//		boolean kiemTra = kiemTraSanPhamCoTrongGioHangChua(maSanPham);
//		for (int i = 0; i < list.size(); i++) {
//			if (list.get(i).getId() == maSanPham && kiemTra == false) {
//				gioHang.add(list.get(i));
//				return true;
//			}
//		}
//		if (kiemTra == true) {
//			int index = gioHang.size();
//			for (int i = 0; i < index; i++) {
//				if (gioHang.get(i).getId() == maSanPham) {
//					gioHang.get(i).setSoLuongMua((gioHang.get(i).getSoLuongMua()) + 1);
//					index = i;
//				}
//			}
//		}
//		return false;
//	}
	public static ArrayList<Product> getGioHang() {
		ArrayList<Product> gioHang=new ArrayList<>();
		return gioHang;
	}
	public static void setGioHang(ArrayList<Product> gioHang) {
		ProductDAO.gioHang = gioHang;
	}
	public static void setDsSanPham(ArrayList<Product> listProduct) {
		ProductDAO.list = listProduct;
	}
	public boolean xoaSanPhamRaKkoiGioHang(String maSanPham){
		for (int i = 0; i < gioHang.size(); i++) {
			if(list.get(i).getId().equals(maSanPham)){
				gioHang.remove(i);
				return true;
			}
		}
		return false;
	}

}
	