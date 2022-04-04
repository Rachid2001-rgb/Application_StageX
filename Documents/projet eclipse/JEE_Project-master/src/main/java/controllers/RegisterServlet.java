package controllers;

import java.io.IOException;

import java.io.PrintWriter;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterServet
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
		 PrintWriter out = response.getWriter();
		 
		 RequestDispatcher dispatcher;
	     
	            
		String first_name = request.getParameter("fname");
		String last_name = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		session.setAttribute("email", email);
		session.setAttribute("password", password);
		session.setAttribute("nom", first_name);
		session.setAttribute("prenom", last_name);
		
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jee_projet", "root", "");
			 
			 PreparedStatement ps;
			 
			 
			 String query = "insert into users(nom,prenom,pass,email) values(?,?,?,?)";
		    	
						ps = conn.prepareStatement(query);
						ps.setString(1, first_name);
						ps.setString(2, last_name);
						ps.setString(3, password);
						ps.setString(4, email);
						
						int rowCount = ps.executeUpdate();
						
						dispatcher = request.getRequestDispatcher("/Home.jsp");
						
						if(rowCount > 0) {
							request.setAttribute("status", "success");
						}else {
							request.setAttribute("status", "error");
						}
						
						dispatcher.forward(request, response);

		 }catch(Exception e){
			 e.printStackTrace();
		 }


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
