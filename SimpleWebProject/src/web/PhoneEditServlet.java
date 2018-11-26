package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PhoneDao;
import entity.Phone;

/**
 * Servlet implementation class PhoneEditServlet
 */
@WebServlet("/PhoneEditServlet")
public class PhoneEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhoneDao phoneDao;

	/**
	 * @throws Exception
	 * @see HttpServlet#HttpServlet()
	 */
	public PhoneEditServlet() throws Exception {
		super();
		phoneDao = new PhoneDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String phoneId = request.getParameter("phoneId");
		Phone phone = null;
		try {
			if (phoneId == null || phoneId.isEmpty()) {
				phone = new Phone();
				phone.setId(-1);
			} else {
				phone = phoneDao.getPhoneById(Integer.parseInt(phoneId));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (phone == null) {
			request.getRequestDispatcher("WEB-INF/view/418.jsp").forward(request, response);
		} else {
			request.setAttribute("phone", phone);
			request.getRequestDispatcher("WEB-INF/view/phoneEdit.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Phone phone = new Phone();
		phone.setId(Integer.parseInt(request.getParameter("id")));
		phone.setTradeMark(request.getParameter("tradeMark"));
		phone.setName(request.getParameter("name"));
		phone.setImagename(request.getParameter("imagename"));
		if(request.getParameter("imagename").isEmpty()) {
			phone.setImagename("nofoto.jpg");
		}
		try {
			if (phone.getId() == -1) {
				phoneDao.savePhone(phone);
			} else {
				phoneDao.updatePhone(phone);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("PhoneServlet");
	}

}
