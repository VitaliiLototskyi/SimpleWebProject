package web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PhoneDao;
import dao.UserDao;
import entity.Phone;
import entity.User;
import security.UserSession;

/**
 * Servlet implementation class PhoneServlet
 */
@WebServlet("/PhoneServlet")
public class PhoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhoneDao phoneDao;
	private UserDao userDao;
	
       
    /**
     * @throws Exception 
     * @see HttpServlet#HttpServlet()
     */
    public PhoneServlet() throws Exception {
        super();
        phoneDao = new PhoneDao();
        userDao = new UserDao();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Object attribute = request.getSession().getAttribute("user");
		String userId = (String) attribute;
		int id = Integer.parseInt(userId);
		try {
			User user = userDao.getUserById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (UserSession.isSessionValid(userId, request)) {
			
		}
		List<Phone> phones = new ArrayList<Phone>();
		try {
			phones.addAll(phoneDao.getAllPhone());
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("phones", phones);
		request.getRequestDispatcher("WEB-INF/view/phone.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
