<%String APP_ROOT= request.getContextPath(); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="<%= APP_ROOT %>/style.css">

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
<div >
	<h1 id="titre-principal">Connectez-vous</h1>
	<p> ${statusMessage}</p>

<form  method="post">
<c:if test="${connectionFailed == true }">
	<p class="erreur">Login ou mot de passe incorrecte</p>
</c:if>
		<fieldset>	
			
			<div ><label>Login</label>
			<input type="text" name="login" value="${login }"></div>
			<div ><label>Password</label>
			<input type="password" name="password"></div>
			<input type="submit" value="Se connecter">
		</fieldset>
	</form>
</div>
 <%@include file="inc/footer.jsp" %>