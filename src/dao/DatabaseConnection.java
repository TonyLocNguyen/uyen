package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	public static Connection getConnection() { 
		Connection connection = null; 
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
		String url = "jdbc:sqlserver://localhost:1433;databaseName=abc"; // tên database của mình thì nhập vào đây
		String user ="sa";  // tên tài khoản người dùng trong database
		String pass="12345"; 
		try {   Class.forName(driver); 
	 connection = DriverManager.getConnection(url,user,pass);    
	 } 
		catch (Exception e) {   
	}
		  return connection;  }
	public static void main(String[]  args){
		Connection connection = DatabaseConnection. getConnection() ; 
		if (connection != null ) {  
			System.out.println("kết nối thành công"); 
		}
		else { 
			System.out.println("kết nối thất bại"); 
					} 
	}
	public static Connection connect() {
		
		return null;
	}
	
	}
