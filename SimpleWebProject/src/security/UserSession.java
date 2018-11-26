package security;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class UserSession {
	public static Map<String, String> userSession = new HashMap<>();
	
	public static void addToSession(HttpServletRequest request, String userId) {
		userSession.put(userId, request.getSession().getId());
		request.getSession().setAttribute("user", userId);
	}
	
	public void clearSession(HttpServletRequest request, String userId) {
		userSession.remove(userId);
	}
	
	public static boolean isSessionValid(HttpServletRequest request, String userId) {
		if(!userSession.containsKey(userId)) {
			return false;
		}
		return userSession.get(userId).equals(request.getSession().getId());
	}
}
