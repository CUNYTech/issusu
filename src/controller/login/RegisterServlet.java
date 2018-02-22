package controller.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: Register ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: Register Post").append(request.getContextPath());
		//Get Request Data
		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		String uname = request.getParameter("user_name");
		String pass = request.getParameter("password");
		String retypePass = request.getParameter("c_password");
		response.getWriter().append("First Name = " + fname);
		
		//Validation (Skip)
		
		//Call model to save data to database (Directly save)
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/susu","root","123456");
			PreparedStatement statement = conn.prepareStatement("insert into user values (?,?,?,?,null,null)");
			statement.setString(1,fname);
			statement.setString(2,lname);
			statement.setString(3,uname);
			statement.setString(4,pass);
			int result = statement.executeUpdate();
			response.getWriter().append("Result = " + result);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		//Forward to View (Skip)
	}

}
