package dao;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.System;

/**
 * Servlet implementation class ConnectionDB
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {

        super();
    	
        // TODO Auto-generated constructor stub
    }
	public  static Connection getCon() {
		Connection Conn=null;
		 try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
	            Conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_users","root","");
          //  System.out.println("ok");
	        } catch (Exception e) {
            System.out.println("err");
	           // e.printStackTrace();
	        }
		 return Conn;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
