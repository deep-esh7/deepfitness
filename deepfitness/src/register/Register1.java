package register;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.register2;
@WebServlet("/Register")

public class Register1 extends HttpServlet {

	register2 service = null;

	public void init(ServletConfig config) throws ServletException {
		service = new register2();
	}

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("name");
		String email= request.getParameter("email");
		String phone= request.getParameter("phone");
		String password= request.getParameter("password");
System.out.println(username);
System.out.println(email);
System.out.println(phone);
System.out.println(password);
String message = service.doRegister(username, email, phone, password);
		
		response.getWriter().write(message);
	}
}