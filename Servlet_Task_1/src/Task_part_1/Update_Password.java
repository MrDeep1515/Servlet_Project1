package Task_part_1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Update_Password extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname = request.getParameter("firstname");
		
		String password = request.getParameter("password");
		
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration_data", "root","root");
			PreparedStatement ps = con.prepareStatement("update employee_data set password=? where fname=?");

			ps.setString(1, password);
			
			ps.setString(2, fname);
		
			
			Registration_entities e = new Registration_entities(fname, password);
			
			
			int rs = ps.executeUpdate();
			System.out.println(rs);
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		
	
				
		RequestDispatcher rd = request.getRequestDispatcher("loginEmployee.jsp");
		rd.forward(request, response);
		
	}
	
}
