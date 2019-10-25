package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectDB;

/**
 * Servlet implementation class ThemSP
 */
@WebServlet("/ThemSP")
public class ThemSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemSP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String Id= request.getParameter("Id");
		String name= request.getParameter("name");
		String images= request.getParameter("images");
		String price= request.getParameter("price");
		String discounted= request.getParameter("discounted");

		System.out.println(Id);
		try {
			new ConnectDB().thucThiCauLenhSQL("insert into SanPham values(N'" + Id + "',N'" + name + "',N'" + images
					+ "',N'" +  price + "',N'" +  discounted + "')");
			response.sendRedirect("Lab7/lab7UserController.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Sai");
		}
	}

}
