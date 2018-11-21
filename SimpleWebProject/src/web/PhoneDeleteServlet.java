package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PhoneDao;

/**
 * Servlet implementation class PhoneDeleteServlet
 */
@WebServlet("/PhoneDeleteServlet")
public class PhoneDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PhoneDao phoneDao;
    /**
     * @throws Exception 
     * @see HttpServlet#HttpServlet()
     */
    public PhoneDeleteServlet() throws Exception {
        super();
        phoneDao = new PhoneDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phoneId = request.getParameter("phoneId");
		if (phoneId == null || phoneId.isEmpty()) {
			request.getRequestDispatcher("WEB-INF/view/418.jsp").forward(request, response);
		} else {
			try {
				phoneDao.deletePhone(Integer.parseInt(phoneId));
			} catch (Exception e) {
				e.printStackTrace();
				request.getRequestDispatcher("WEB-INF/view/418.jsp").forward(request, response);
			}
			response.sendRedirect("PhoneServlet");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
