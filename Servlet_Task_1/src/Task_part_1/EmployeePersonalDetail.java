package Task_part_1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EmployeePersonalDetail extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		String fname = (String) session.getAttribute("firstname");

		if (fname == null) {
			request.setAttribute("error", "Login Required");
			RequestDispatcher rd = request.getRequestDispatcher("loginEmployee.jsp");
			rd.include(request, response);
		} else {

			PrintWriter pw = response.getWriter();
			pw.write("<h1 style='text-align:center';>Hello " + fname + "</h1>");

		}

	}

}
