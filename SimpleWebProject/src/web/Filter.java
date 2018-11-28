package web;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import security.UserSession;

/**
 * Servlet Filter implementation class Filter
 */
@WebFilter("/PhoneServlet")
public class Filter implements javax.servlet.Filter {

    /**
     * Default constructor. 
     */
    public Filter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpServletRequest = ((HttpServletRequest)request);
		Object attribute = httpServletRequest.getSession().getAttribute("user");
		if (attribute == null) {
			request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response);
			return;
		}
		String userId = (String)attribute;
		if (!UserSession.isSessionValid(userId, httpServletRequest)) {
			request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response);
			return;
		}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
