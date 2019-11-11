package demo.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.misc.Request;

@WebServlet("/ByeServlet")
public class ByeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ByeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = (String) request.getAttribute("user");
		String pass = (String) request.getAttribute("pass");
		ServletOutputStream out = response.getOutputStream();
		out.println("<html>");
        out.println("<head><title>Chuyen trang</title></head>");
        out.println("<body>");
        out.println("<h3>Good bye</h3>");
        out.println("<p>User Name = " + user + "</p>");
        out.println("<p>Password = " + pass + "</p>");
        out.println("</body>");
        out.println("<html>");
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
