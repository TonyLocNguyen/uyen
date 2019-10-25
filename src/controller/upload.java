package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class upload
 */
@WebServlet("/upload")
public class upload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public upload() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uploadFolder = getServletContext().getRealPath("\\upload");
		String rs = null;
		boolean uploadCompleted = false;
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(
						new DiskFileItemFactory())
						.parseRequest((RequestContext) request);
				for (FileItem fileItem : multiparts) {
					if (!fileItem.isFormField()) {
						String name = new File(fileItem.getName()).getName();
						File a = new File(uploadFolder);
						if (!a.exists())
							a.mkdir();
						fileItem.write(new File(uploadFolder + "/" + name));
						rs = name;
						uploadCompleted = true;
					}
				}
			} catch (Exception e) {
				request.setAttribute("message", "File Upload Failed" + e);
			}
		} else {
			request.setAttribute("message", "Sorry! Well done!");
		}
		if (uploadCompleted) {
			response.sendRedirect("upload/" + rs);
		} else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"Lab8/upload.jsp");
			rd.forward(request, response);
		}
	}
}
