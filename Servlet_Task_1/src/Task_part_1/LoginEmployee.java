package Task_part_1;

import java.io.IOException;
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

public class LoginEmployee extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("firstname");
		String password = request.getParameter("password");
		int count = 0;
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration_data", "root","root");
			PreparedStatement ps = con.prepareStatement("select count(*) from employee_data where fname = ? and password = ?");
			ps.setString(1, fname);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			System.out.println(rs);
			rs.next();
			count = rs.getInt(1);
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		if (count == 1) {
			
			HttpSession session = request.getSession();
			session.setAttribute("firstname", fname);
			
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.include(request, response);
			
		} else {
			
			request.setAttribute("error", "*Wrong Details Please Fill Original Details");
			RequestDispatcher rd = request.getRequestDispatcher("loginEmployee.jsp");
			rd.include(request, response);
		}
		
	}

}
