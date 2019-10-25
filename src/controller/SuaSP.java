package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.activation.Repository;

import model.ConnectDB;

/**
 * Servlet implementation class SuaSP
 */
@WebServlet("/SuaSP")
public class SuaSP extends HttpServlet {
	String id = "";
	String name= "";
	String images = "";
	String price= "";
	String discounted="";
	private static final long serialVersionUID = 1L;
       
    
    public SuaSP() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String Id= request.getParameter("Id");
		ResultSet rs;
		try {
			rs = new ConnectDB().chonDuLieuTuDTB("select * from SanPham where Id='" + Id + "'");
			while (rs.next()){
				name = rs.getString("name");
				images = rs.getString("images");
				price = rs.getString("price");
				discounted = rs.getString("discounted");
				
			}
			ServletContext context = getServletContext();
			context.setAttribute("Id", Id);
			context.setAttribute("name", name);
			context.setAttribute("images", images);
			context.setAttribute("price", price);
			context.setAttribute("discounted", discounted);
			response.sendRedirect("Lab7/update.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String Id= request.getParameter("Id");
		String name= request.getParameter("name");
		String images= request.getParameter("images");
		String price= request.getParameter("price");
		String discounted= request.getParameter("discounted");
		ServletContext context = getServletContext();
		String id = (String) context.getAttribute("Id");
		
		try {
			new ConnectDB().thucThiCauLenhSQL("update SanPham set Id=N'" + Id + "',name=N'" + name + "',images=N'" + images
					+ "',price=N'" +  price + "',discounted=N'" +  discounted+ "' where Id=N'" + id + "'");
			response.sendRedirect("Lab7/lab7UserController.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
