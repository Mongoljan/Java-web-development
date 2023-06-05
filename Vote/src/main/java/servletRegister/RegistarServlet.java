package servletRegister;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistarServlet
 */
@WebServlet("/register")
public class RegistarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String umobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
			PreparedStatement statement = con.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?) ");
            statement.setString(1, uname);
            statement.setString(2, upwd);
            statement.setString(3, uemail);
            statement.setString(4, umobile);
            System.out.println("ner: "+uname);
            System.out.println("pass: "+upwd);
            System.out.println("email: "+uemail);
            System.out.println("phone: "+umobile);
            int rowCount = statement.executeUpdate();
            dispatcher = request.getRequestDispatcher("registration.jsp");
            // Check if the login is successful
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } 
            else {
            	request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
		} catch (SQLException | ClassNotFoundException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
