package demo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SessionSetAtribute")
public class SessionSetAtribute extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String forward = req.getParameter("forward");
		if("true".equals(forward)) {
			 SessionUsers sUser = new SessionUsers();
				HttpSession sesstion = req.getSession();
				sesstion.setAttribute("sUser.setAddress(address)", "Dai Loc");
				sesstion.setAttribute("sUser.setEmail(address)", "Locxoay.spkt.2503@gmail.com");
	        RequestDispatcher dispatcher //
	                = req.getServletContext().getRequestDispatcher("/SessionGetAtribute");
	        dispatcher.forward(req, resp);
	        return;
		}
	}
	
}
