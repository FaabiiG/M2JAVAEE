package dao;

import java.sql.*;
import java.util.ArrayList;

import beans.Utilisateur;

public class UtilisateurDao {
	
	//methode ajouter
	public static boolean ajouter(Utilisateur utilisateur) {
		try {

			String req = "INSERT INTO utilisateur (nom,prenom,login,password)" + "VALUES (?, ?,?,?)";
			
			
			Connection Conn= Connexion.getCon();
			
			PreparedStatement preparedStatement = Conn.prepareStatement(req);
			preparedStatement.setString(1,utilisateur.getNom());
			preparedStatement.setString(2,utilisateur.getPrenom());
			preparedStatement.setString(3,utilisateur.getLogin());
			preparedStatement.setString(4,utilisateur.getPassword());

			preparedStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		
	}
	public static boolean supprimer(int id) {
		try {
			String req = "DELETE FROM utilisateur WHERE  id=?";
			Connection Conn= Connexion.getCon();
			PreparedStatement preparedStatement = Conn.prepareStatement(req);
			preparedStatement.setInt(1, id);
			preparedStatement.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean modifier(Utilisateur user) {
		try {
			String req = "UPDATE utilisateur set nom=?,prenom=?,login=?,password=? where id=?";
			java.sql.Connection Conn= Connexion.getCon();
			PreparedStatement preparedStatement = Conn.prepareStatement(req);
			preparedStatement.setString(1,user.getNom());
    			preparedStatement.setString(2,user.getPrenom());
    			preparedStatement.setString(3,user.getLogin());
    			preparedStatement.setString(4,user.getPassword());
    			preparedStatement.setInt(5,user.getId());

			preparedStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}
	public static ArrayList<Utilisateur> lister(){
		  ArrayList<Utilisateur> utilisateurs = new ArrayList<Utilisateur>();
		try {
			java.sql.Connection Conn= Connexion.getCon();
			PreparedStatement myStmt = Conn.prepareStatement("SELECT * FROM utilisateur  ORDER BY id asc");
			ResultSet resultat = myStmt.executeQuery();
			while (resultat.next()) {
				utilisateurs.add(new Utilisateur(resultat.getInt("id"), resultat.getString("nom"), resultat.getString("prenom"), resultat.getString("login"), resultat.getString("password")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return utilisateurs;
	}
	
	
	public static Utilisateur get(int id) {
		 try {

			 java.sql.Connection myCon= Connexion.getCon();
	            PreparedStatement myStmt = myCon.prepareStatement("SELECT * FROM utilisateur WHERE id = ?");
	            myStmt.setInt(1, id);
	            ResultSet resultat = myStmt.executeQuery();
	            if (resultat.next()) {
	             Utilisateur  user  = new Utilisateur(resultat.getInt("id"), resultat.getString("nom"),resultat.getString("prenom"), resultat.getString("login"), resultat.getString("password"));
	                return user;
	            }
	        } catch (SQLException e) {
	        	e.printStackTrace();
	        }
		 return null;
	}
	
}
