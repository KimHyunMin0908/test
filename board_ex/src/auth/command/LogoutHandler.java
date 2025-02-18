package auth.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mvc.command.CommandHandler;

public class LogoutHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		resp.sendRedirect(req.getContextPath() + "/index.jsp");
		return null;
	}

}
