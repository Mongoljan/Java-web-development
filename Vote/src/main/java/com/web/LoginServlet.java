package com.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
			System.out.println("Database connection");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String query = "SELECT * FROM users WHERE username = ? AND password = ?";
            statement = con.prepareStatement(query);
            statement.setString(2, username);
            statement.setString(3, password);
            resultSet = statement.executeQuery();

            // Check if the login is successful
            if (resultSet.next()) {
                response.sendRedirect("index.jsp");
            } else {
                out.println("<font color=red size=18>LogIn Failed!!<br>");
                out.println("<a href=login.jsp> Try AGAIN!!</a>");
            }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
		
