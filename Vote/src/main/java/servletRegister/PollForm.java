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
 * Servlet implementation class PollForm
 */
@WebServlet("/poll")
public class PollForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    String pscope = request.getParameter("region");
	    String ptype = request.getParameter("radio");
		String title = request.getParameter("title");
		String description = request.getParameter("content");
		String imageLink = request.getParameter("imageLink");

	    String scope = "";
	    if (pscope.equals("region1")) {
	    	scope = "МУИС";
	    } else if (pscope.equals("region2")) {
	    	scope = "Салбар сургууль";
	    } else if (pscope.equals("region3")) {
	    	scope = "Тэнхим";
	    }
	    
	    String type = "";
	    if (ptype.equals("option1")) {
	    	type = "Анги танхим";
	    } else if (ptype.equals("option2")) {
	    	type = "Багш, ажилчид";
	    } else if (ptype.equals("option3")) {
	    	type = "Интернэт сүлжээ";
	    }else if (ptype.equals("option4")) {
	    	type = "Техник хангамж";
	    }else if (ptype.equals("option5")) {
	    	type = "Байгууламжийн дулаалга";
	    }
	    
	    
	    RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
			PreparedStatement statement = con.prepareStatement("insert into poll(scope,type,title,description,imageLink) values(?,?,?,?,?) ");
            statement.setString(1, scope);
            statement.setString(2, type);
            statement.setString(3, title);
            statement.setString(4, description);
            statement.setString(5, imageLink);
            int rowCount = statement.executeUpdate();
            dispatcher = request.getRequestDispatcher("vote.jsp");
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
//		
//	    // Print the selected values
//	    System.out.println("Sedew: " + ptypeText);
//	    System.out.println("torol: " + pscopeText);
//	    System.out.println("garchig: " + ptitle);
//	    System.out.println("tailbar: " + pdesc);
//	    System.out.println("link: " + pimage);

	}

}
