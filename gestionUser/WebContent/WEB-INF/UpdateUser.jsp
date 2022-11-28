<%@page import="beans.Utilisateur"%>
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
	<%
		Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
	%>
	<div id="corps">
		<h1 id="titre-principal">Modification des Informations de ${utilisateur.nom } ${utilisateur.prenom } </h1>
	<p class="erreur">${statusMessage}</p>
	<form method="post">
  <fieldset>
    <legend>modifier Utilisateur</legend>
    <div >
      <label>Nom</label>
      <input type="text" value="${utilisateur.nom }" name="nom" />
      <span class="erreur">${ erreurs.nom }</span>
    </div>
    <div  >
      <label>Prenom</label>
      <input type="text" value="${utilisateur.prenom }" name="prenom" />
      <span class="erreur">${ erreurs.prenom }</span>
    </div>
    <div c>
      <label>Login</label>
      <input type="text" value="${utilisateur.login }" name="login" />
      <span class="erreur">${ erreurs.login }</span>
    </div>
    <div >
      <label>Password</label>
      <input type="password" value="${utilisateur.password }" name="password" />
      <span class="erreur">${ erreurs.password }</span>
    </div>
    <div >
      <label>Confirm Password</label>
      <input type="password" name="passwordConf" />
      <span class="erreur">${erreurs.passwordConf}</span>
    </div>
    <input type="submit" value="Modifier" />
  </fieldset>
</form>

	</div>
<%@include file="inc/footer.jsp" %>