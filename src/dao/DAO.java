package dao;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Product;
import model.SanPham;
import dao.DatabaseConnection;

public class DAO {
	Connection connect;

	public DAO() {
		connect = DatabaseConnection.connect();
	}

	private static ArrayList<Product> listProduct = new ArrayList<Product>();

	public static ArrayList<Product> getListProduct() {
		if (listProduct.size() == 0) {
			Connection conn;
			Statement stmt = null;
			String sql = "Select * from Product";
			try {
				conn = DatabaseConnection.getConnection();
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					listProduct.add(new Product(rs.getString("id"), rs
							.getString("name"), rs.getString("images"), rs
							.getDouble("price"), rs.getDouble("discounted"), rs.getString("loaiHang")));
				}
				stmt.close();
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return DAO.listProduct;
	}

}
