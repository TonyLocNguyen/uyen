package controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class xulydangky1
 */
@WebServlet("/xulydangky1")
public class xulydangky1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xulydangky1() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tenDangNhap= request.getParameter("username");
		String matKhau= request.getParameter("pass");
		String fullname= request.getParameter("fullName");
		String gioitinh= request.getParameter("gioitinh");
		String ngaysinh= request.getParameter("ngaysinh");
		
		
		PrintWriter writer = response.getWriter();
		writer.print("hello ");
		writer.print( "name: " + fullname  +"\t username: "+tenDangNhap +"\t passwword: "+ 
				matKhau +"\t gioi tinh " + gioitinh+"\t ngay sinh: " +ngaysinh);

	}

}
