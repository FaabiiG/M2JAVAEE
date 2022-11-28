<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="beans.Utilisateur"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="inc/header.jsp" %>


	<div id="corps">
	<h1 id="titre-principal">Liste des utilisateurs</h1>
		<p> ${statusMessage}</p>
	<c:choose>
	<c:when test="${empty utilisateurs }">
		<p>La liste des utilisateurs est vide !!</p>
	</c:when>
	<c:otherwise>
			<table border="1">
				<tr>
					<th>ID</th>
					<th>Prenom</th>
					<th>Nom</th>
					<th>Login</th>
					<th>Password</th>
					<th colspan="2">Actions</th>
				</tr>
			

			<c:forEach   var="utilisateur" items="${utilisateurs}" >
				<tr>
						<td><c:out value="${utilisateur.id}"/></td>
						<td><c:out value="${utilisateur.prenom}"/></td>
						<td><c:out value="${utilisateur.nom}"/></td>
						<td><c:out value="${utilisateur.login}"/></td>
						<td><c:out value="${utilisateur.password}"/></td>
						<td><button><a href="update?id=${utilisateur.id}">Modifier</a></button></td>
						<td><button><a href="delete?id=${utilisateur.id}"
							onclick="return confirm('Etes-vous sur ??')">Supprimer</a></button></td>
				</tr>
					
			</c:forEach>
				

			</table>
			</c:otherwise>
	</c:choose>
			
</div>
<%@include file="inc/footer.jsp" %>