package Task_part_1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowAllEmployees extends HttpServlet {

	@Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration_data", "root",
                    "root");
            PreparedStatement ps = con.prepareStatement("select * from employee_data");
         

            ResultSet rs = ps.executeQuery();
            
            ArrayList<Registration_entities> employeeDataList = new ArrayList<Registration_entities>();
            
            while (rs.next()) {
            	
    		int id = rs.getInt("id");
             String fname =  rs.getString("fname");
             String lname =   rs.getString("lname");
             String dob =   rs.getString("dob");
             String gender =    rs.getString("gender");
             String mobile =   rs.getString("mobile");
             String email =    rs.getString("email");
             String password =   rs.getString("password");
             String bloodGroup =   rs.getString("bloodGroup");
             String address =   rs.getString("address");
             String pincode =   rs.getString("pincode");
            	
             Registration_entities e = new Registration_entities(id, fname, lname, dob, gender, mobile, email, password, bloodGroup, address, pincode);   
             employeeDataList.add(e);
             
            }
            
            request.setAttribute("Data", employeeDataList);

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        
        
        
        RequestDispatcher rd = request.getRequestDispatcher("data.jsp");
        rd.forward(request, response);

        
        
    }
}
