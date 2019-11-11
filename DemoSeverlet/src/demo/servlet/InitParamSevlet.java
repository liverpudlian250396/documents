package demo.servlet;

import java.io.IOException;

import javax.management.loading.PrivateClassLoader;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InitParamSevlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String password = this.getServletConfig().getInitParameter("password");
		ServletOutputStream out = resp.getOutputStream();
		out.println("<html>");
        out.println("<head><title>Init Param</title></head>");
 
        out.println("<body>");
        out.println("<h3>Init Param</h3>");
//        out.println("<p>User Name = " + this.Username + "</p>");
        out.println("<p>Password = " + password + "</p>");
        out.println("</body>");
        out.println("<html>");
	}

}
