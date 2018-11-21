package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PhoneDao;
import entity.Phone;

/**
 * Servlet implementation class PhoneServlet
 */
@WebServlet("/PhoneServlet")
public class PhoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhoneDao phoneDao;
       
    /**
     * @throws Exception 
     * @see HttpServlet#HttpServlet()
     */
    public PhoneServlet() throws Exception {
        super();
        phoneDao = new PhoneDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Phone> phones = new ArrayList<Phone>();
		try {
			phones.addAll(phoneDao.getAllPhone());
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("phones", phones);
		request.getRequestDispatcher("WEB-INF/view/phone.jsp").forward(request, response);
		
//		try {
//			phoneDao = new PhoneDao();
//			List<Phone> phones = phoneDao.getAllPhone();
//			response.getWriter().append("Phones : ").append(phones.toString());
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
