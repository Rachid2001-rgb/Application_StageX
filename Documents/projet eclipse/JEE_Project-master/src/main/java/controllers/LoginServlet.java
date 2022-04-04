package controllers;



import model.Users;



import java.io.IOException;
import java.io.PrintWriter;


import controllers.LoginDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter(); 
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		Users users = new Users();
		users.setEmail(email);
		users.setPass(pass);
		
		
		  LoginDao loginDao = new LoginDao();
		  
		    try
		    {
		        String userValidate = loginDao.authenticateUser(users);
		 
		        if(userValidate.equals("Admin_Role"))
		        {
		            System.out.println("Admin's Home");
		 
		            HttpSession session = request.getSession(); //Creating a session
		            session.setAttribute("Admin", email); //setting session attribute
		            request.setAttribute("userName", email);
		 
		            request.getRequestDispatcher("/Admin.jsp").forward(request, response);
		        }
		        else if(userValidate.equals("Member_Role"))
		        {
		            System.out.println("Member's Home");
		 
		            HttpSession session = request.getSession();
		            session.setAttribute("Member", email);
		            request.setAttribute("userName", email);
		 
		            request.getRequestDispatcher("/Member.jsp").forward(request, response);
		        }
		        else if(userValidate.equals("Adherent_Role"))
		        {
		            System.out.println("Adherent's Home");
		 
		            HttpSession session = request.getSession();
		            session.setMaxInactiveInterval(10*60);
		            session.setAttribute("Adherent", email);
		            request.setAttribute("userName", email);
		 
		            request.getRequestDispatcher("/Adherent.jsp").forward(request, response);
		        }
		        else
		        {
		            System.out.println("Error message = "+userValidate);
		            request.setAttribute("errMessage", userValidate);
		 
		            request.getRequestDispatcher("/Login.jsp").forward(request, response);
		        }
		    }
		    catch (IOException e1)
		    {
		        e1.printStackTrace();
		    }
		    catch (Exception e2)
		    {
		        e2.printStackTrace();
		    }

}
}