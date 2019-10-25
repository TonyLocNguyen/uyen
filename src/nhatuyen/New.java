package nhatuyen;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/New")
public class New extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public New() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/Lab3/lab3-bootraps.jsp";
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String retypepassword = request.getParameter("retypepassword");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String day = request.getParameter("day");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String phone = request.getParameter("phone");
		String tel = request.getParameter("tel");
		String quocgia = request.getParameter("quocgia");
		String tinhthanh = request.getParameter("tinhthanh");
		String quanhuyen = request.getParameter("quanhuyen");
		String address = request.getParameter("address");

		String email_error = "";
		String password_error = "";
		String retypepassword_error = "";
		String name_error = "";
		String sex_error = "";
		String day_error = "";
		String month_error = "";
		String year_error = "";
		String phone_error = "";
		String tel_error = "";
		String quocgia_error = "";
		String tinhthanh_error = "";
		String quanhuyen_error = "";
		String address_error = "";

		boolean error = true;

		if (email == null || email.equals("")) {
			email_error = "Email không được để trống !";
		}
		if (password == null || password.equals("") || retypepassword == null || retypepassword.equals("")) {
			password_error = "Password không được để trống  !";
		} else {
			if (!password.equals(retypepassword)) {
				password_error = "Password không trùng nhau !";
			}
		}

		if (name == null || name.equals("")) {
			name_error = "Bạn chưa nhập tên   !";
		}
		if (sex == null) {
			sex_error = "Bạn không có giới tính sao ??";
		}

		if (phone == null || phone.trim().isEmpty()) {
			phone_error = "Bạn không có số điện thoại sao ?";
			phone = "";
		} else {
			Long numbPhone = null;
			try {
				numbPhone = Long.parseLong(phone);
			} catch (NumberFormatException e) {
				phone_error = "Bạn phải nhập số";
				phone = "";
			}
			if (numbPhone != null && numbPhone < 0) {
				phone_error = "Làm gì có số điện thoại âm ?!";
				phone = "";
			}

		}
		if (tel == null || tel.trim().isEmpty()) {
			tel_error = "Bạn không có số di động sao ?";
			tel = "";
		} else {
			Long numbTel = null;
			try {
				numbTel = Long.parseLong(tel);
			} catch (NumberFormatException e) {
				tel_error = "Bạn phải nhập số";
				tel = "";
			}
			if (numbTel != null && numbTel < 0) {
				tel_error = "Lỗi đã nhắc ở trên rồi nhé !!";
				tel = "";
			}

		}

		if (day == null || day.equals("day")) {
			day_error = "Vui lòng chọn ngày!!";
		}

		if (month == null || month.equals("month")) {
			month_error = "Vui lòng chọn tháng !!";
		}
		if (year == null || year.equals("year")) {
			year_error = "Vui lòng chọn năm !!";
		}
		if (quocgia == null || quocgia.equals("quocgia")) {
			quocgia_error = "Vui lòng ghi quốc gia của bạn !!";
		}
		if (tinhthanh == null || tinhthanh.equals("tinhthanh")) {
			tinhthanh_error = "Vui lòng ghi tỉnh,thành phố của bạn !!";
		}
		if (quanhuyen == null || quanhuyen.equals("quanhuyen")) {
			quanhuyen_error = "Vui lòng ghi quận,huyện của bạn !!";
		}
		if (address == null  || quanhuyen.equals("quanhuyen")){
			address_error = "Vui lòng ghi nơi ở của bạn !!";
		}

		if (email_error == "" && password_error == "" && retypepassword_error == "" && name_error == ""
				&& sex_error == "" && day_error == "" && month_error == "" && year_error == "" && phone_error == ""
				&& tel_error == "" && quocgia_error == "" && tinhthanh_error == "" && quanhuyen_error == ""
				&& address_error == "") {
			error =false;
		}
			if (!error) {
				url = "/Lab3/DangKyThanhCong-Lab3.jsp";
				Account acc = new Account(name, email, password);
				HttpSession session = request.getSession();
				session.setAttribute("account", acc);
			}

		request.setAttribute("email", email);
		request.setAttribute("email_error", email_error);
		request.setAttribute("password", password);
		request.setAttribute("password_error", password_error);
		request.setAttribute("retypepassword", retypepassword);
		request.setAttribute("retypepassword_error", retypepassword_error);
		request.setAttribute("name", name);
		request.setAttribute("name_error", name_error);
		request.setAttribute("sex", sex);
		request.setAttribute("sex_error", sex_error);
		request.setAttribute("day", day);
		request.setAttribute("day_error", day_error);
		request.setAttribute("month", month);
		request.setAttribute("month_error", month_error);
		request.setAttribute("year", year);
		request.setAttribute("year_error", year_error);
		request.setAttribute("phone", phone);
		request.setAttribute("phone_error", phone_error);
		request.setAttribute("tel", tel);
		request.setAttribute("tel_error", tel_error);
		request.setAttribute("quocgia", quocgia);
		request.setAttribute("quocgia_error", quocgia_error);
		request.setAttribute("tinhthanh", tinhthanh);
		request.setAttribute("tinhthanh_error", tinhthanh_error);
		request.setAttribute("quanhuyen", quanhuyen);
		request.setAttribute("quanhuyen_error", quanhuyen_error);
		request.setAttribute("address", address);
		request.setAttribute("address_error", address_error);
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
