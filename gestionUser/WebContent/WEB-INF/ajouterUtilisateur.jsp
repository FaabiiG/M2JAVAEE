<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="inc/header.jsp" %>
<style>
fieldset{
 
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
legend{
          font-size:25px;
}
input {
  font-family: "Roboto", sans-serif;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
input[type=submit] {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  background: #C70039 ;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;  
  pointer: cursor;
}
</style>
<div id="corps">
	
	<p class="erreur">${statusMessage}</p>
<form  method="post">
		<fieldset>	
			<legend>Ajout Utilisateur</legend>
			<div><label>Nom</label>
			<input type="text" name="nom" value="${utilisateur.nom }"> 
			<span class="erreur">${ erreurs.nom }</span>
		</div>
			<div ><label>Prenom</label>
			<input type="text" name="prenom" value="${utilisateur.prenom }"> 
			<span class="erreur">${erreurs.prenom}</span>
		</div>
			<div ><label>Login</label>
			<input type="text" name="login" value="${utilisateur.login }"> 
			<span class="erreur">${erreurs.login}</span>
		</div>
			<div ><label>Password</label>
			<input type="password" name="password" value="${utilisateur.password }"> 
			<span class="erreur">${erreurs.password}</span>
		</div>
			<div ><label>Confirm Password</label>
			<input type="password" name="passwordConf"> 
			<span class="erreur">${erreurs.passwordConf}</span>
		</div>
			<input type="submit" value="Ajouter">
		</fieldset>
	</form>
</div>
<%@include file="inc/footer.jsp" %>