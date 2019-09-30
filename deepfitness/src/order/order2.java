package order;


import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uploadforajax.uploadserver;
@WebServlet("/order")
public class order2 extends HttpServlet {

		order1 service = null;

	public void init(ServletConfig config) throws ServletException {
		service = new order1();
	}

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String pincode = request.getParameter("pincode");
		String mobile = request.getParameter("mobile");
		String productid = request.getParameter("productid");
		String productname = request.getParameter("productname");
		String productprice = request.getParameter("productprice");
		

		String message = service.doLogin(name, email, address, city, state, pincode, mobile, productid, productname, productprice);
		response.getWriter().write(message);
	}
}