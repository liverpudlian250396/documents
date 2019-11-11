package demo.servlet;

import java.io.IOException;

import javax.jws.WebParam;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/AnotationServlet","/anServlet"},initParams = {
		@WebInitParam(name = "user", value = "thanhcang"),
		@WebInitParam(name = "pass", value = "123456"),
})
public class AnotationServlet extends HttpServlet{
	private static final long serialVersionUID = 1L; 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = this.getServletConfig().getInitParameter("user");
		String pass = this.getServletConfig().getInitParameter("pass");
		ServletOutputStream out = resp.getOutputStream();
		out.println("<html>");
        out.println("<head><title>Init Param</title></head>");
 
        out.println("<body>");
        out.println("<h3>Init Param</h3>");
        out.println("<p>User Name = " + user + "</p>");
        out.println("<p>Password = " + pass + "</p>");
        out.println("</body>");
        out.println("<html>");
	}

}
