package model;

import java.util.ArrayList;

public class Product {
	private String id;
	private String name;
	private String imag;
	private double price;
	private double dicounted;
	private String loaiHang;
	public Product(String id, String name, String imag, double price,
			double dicounted, String loaiHang) {
		super();
		this.id = id;
		this.name = name;
		this.imag = imag;
		this.price = price;
		this.dicounted = dicounted;
		this.loaiHang = loaiHang;
	}
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getImag() {
		return imag;
	}
	public double getPrice() {
		return price;
	}
	public double getDicounted() {
		return dicounted;
	}
	public String getLoaiHang() {
		return loaiHang;
	}
	
}
