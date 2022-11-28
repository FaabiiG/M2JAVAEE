package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import forms.AddUserForm;
import forms.LogForm;

/**
 * Servlet implementation class login
 */
@WebServlet({"/login","/logout"})
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_LOGIN_UTILISATEUR = "/WEB-INF/login.jsp";
	private static final String VUE_LIST_UTILISATEUR = "/WEB-INF/listerUtilisateur.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		switch (request.getServletPath()) {
		case "/logout":
			LogForm lForm= new LogForm(request);
			lForm.logout(request.getSession());
			request.setAttribute("statusMessage", "Deconnexion Reussie !!");
			getServletContext().getRequestDispatcher(VUE_LOGIN_UTILISATEUR).forward(request, response);
			//response.sendRedirect("login");;
			break;

		case "/login":
			getServletContext().getRequestDispatcher(VUE_LOGIN_UTILISATEUR).forward(request, response);
			
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LogForm lForm= new LogForm(request);
		if(lForm.login()) {	
			HttpSession session =request.getSession();
			session.setAttribute("login",request.getParameter("login"));
			
			response.sendRedirect("list");
		}
	
		else {
			request.setAttribute("connectionFailed", true);
			
			request.setAttribute("login", request.getParameter("login"));
			//response.sendRedirect("login");
			getServletContext().getRequestDispatcher(VUE_LOGIN_UTILISATEUR).forward(request, response);
		}
	}

}
