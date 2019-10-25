package model;

import java.util.ArrayList;

public class MenuDAO {
	public static ArrayList<Menu> getListMenu() {
		ArrayList<Menu> lstMenus = new ArrayList<Menu>();
		
		lstMenus.add(new Menu("Trang chủ", "index.jsp"));
		lstMenus.add(new Menu("Các ví dụ", "examples.jsp"));
		lstMenus.add(new Menu("Bài tập", "table.jsp"));
		lstMenus.add(new Menu("Giới thiệu", "about.jsp"));
		lstMenus.add(new Menu("Liên hệ", "contact.jsp"));
		
//		for (int i = 0; i < lstMenus.size(); i++) {
//			System.out.println(lstMenus.get(i));
//		}
		return lstMenus;
	}
}
