package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.servicecontext.SendingContextServiceContext;

import model.ConnectDB;

/**
 * Servlet implementation class XoaSP
 */
@WebServlet("/XoaSP")
public class XoaSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public XoaSP() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Id =  request.getParameter("Id");
		try {
			new ConnectDB().thucThiCauLenhSQL("delete from SanPham where Id='" + Id + "'");
			response.sendRedirect("Lab7/lab7UserController.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
