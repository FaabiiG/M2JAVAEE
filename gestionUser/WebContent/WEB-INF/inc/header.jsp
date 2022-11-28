<%String APP_ROOT= request.getContextPath(); %>
<%@page import="beans.Utilisateur"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<style>
<%@include file="css/style.css" %>
</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion des utilisateurs</title>
</head>
<body>
<div id="entete">Gestion des utilisateurs</div>
<div id="menu">
	<ul>
		<c:choose>
			<c:when test="${connectionFailed != true }">
				<li><a href="<c:url value='/'/>">Accueil</a></li>
				<li><a href="<c:url value='/list'/>" >Lister</a></li>
				<li><a href="<c:url value='/add'/>">Ajouter</a></li>
				<li><a href="<c:url value='/logout'/>">Se deconnecter</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="<c:url value='/login'/>">Connexion</a></li>
			</c:otherwise>
	</c:choose>
		
	</ul>
</div>
	