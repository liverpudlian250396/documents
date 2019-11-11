/**
 * 
 */
package demo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author ADMIN
 *
 */
@WebServlet(urlPatterns = {"/HelloServlet","/hello"},initParams = {
		@WebInitParam(name = "user" ,value = "ThanhCang"),
		@WebInitParam(name = "pass", value = "123456")
})
public class HelloServlet extends HttpServlet{
	private static final long serialVersionUID = 1L; 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = this.getServletConfig().getInitParameter("user");
		String pass = this.getServletConfig().getInitParameter("pass");
		String forward = req.getParameter("forward");
		if("true".equals(forward)) {
			 req.setAttribute("user","Manh phu");
			 req.setAttribute("pass", "654321");
            RequestDispatcher dispatcher //
                    = req.getServletContext().getRequestDispatcher("/ByeServlet");
            dispatcher.forward(req, resp);
            return;
		}

		ServletOutputStream out = resp.getOutputStream();
		out.println("<html>");
        out.println("<head><title>Chuyen trang</title></head>");
        out.println("<body>");
        out.println("<h3>Hello</h3>");
        out.println("<p>User Name = " + user + "</p>");
        out.println("<p>Password = " + pass + "</p>");
        out.println("</body>");
        out.println("<html>");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
