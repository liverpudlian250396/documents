/**
 * 
 */
package demo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author ADMIN
 *
 */
public class HelloServlet extends HttpServlet{
	private static final long serialVersionUID = 1L; 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletOutputStream out = resp.getOutputStream();
		out.println("<html>");
        out.println("<head><title>Hello Servlet</title></head>");
 
        out.println("<body>");
        out.println("<h3>Hello Servlet</h3>");
        out.println("</body>");
        out.println("<html>");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
