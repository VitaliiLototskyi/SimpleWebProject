package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import entity.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao userDao;

	/**
	 * @throws Exception
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() throws Exception {
		super();
		userDao = new UserDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("WEB-INF/view/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("name");
		String userEmail = request.getParameter("email");
		String password = request.getParameter("password");
		User user = new User();
		user.setName(userName);
		user.setEmail(userEmail);;
		user.setPassword(password);
		try {
			if (userDao.isUserExist(userEmail)) {
				response.sendRedirect("UserExist");
			} else {
				userDao.saveUser(user);
				response.sendRedirect("LoginServlet");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
