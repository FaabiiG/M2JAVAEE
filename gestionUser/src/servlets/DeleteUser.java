package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Utilisateur;
import dao.UtilisateurDao;
import forms.AddUserForm;
import forms.DeleteForm;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet("/delete")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_LIST_UTILISATEUR = "/WEB-INF/listerUtilisateur.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeleteForm Form= new DeleteForm(request);
		Form.supprimer();
		request.setAttribute("statusMessage", Form.getStatusMessage());
		request.setAttribute("status",Form.isStatus());
		response.sendRedirect("list");
		//getServletContext().getRequestDispatcher(VUE_LIST_UTILISATEUR).forward(request, response);


	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
