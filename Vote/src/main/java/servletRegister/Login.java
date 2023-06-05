package servletRegister;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail = request.getParameter("name");
		String upwd = request.getParameter("pass");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		Connection con;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
			PreparedStatement statement = con.prepareStatement("select * from users where uemail = ? and upwd = ?");
			
            statement.setString(1, uemail);
            statement.setString(2, upwd);
            System.out.println("pass: "+upwd);
            System.out.println("email: "+uemail);
            
            ResultSet rs = statement.executeQuery();
            if(rs.next()) {
            	session.setAttribute("name", rs.getString("uname"));
            	dispatcher = request.getRequestDispatcher("index.jsp");
            }
            else {
            	request.setAttribute("status", "failed");
            	dispatcher = request.getRequestDispatcher("login.jsp");
            }
            dispatcher.forward(request, response);
			
		} catch(Exception e){
			e.printStackTrace();
		}
	}

}
