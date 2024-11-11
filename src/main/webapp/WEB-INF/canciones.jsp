<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Canciones</title>
</head>
<body>
	<h1>Canciones: </h1>
	
	<ul>
	<c:forEach var="cancion" items="${canciones}">
	<li><b>Titulo: </b><i>${cancion.titulo}</i><b> Artista: </b>${cancion.artista}</li>
	<a href="/canciones/detalle/${cancion.id}">Ver detalle</a>
	</c:forEach>
	</ul>
</body>
</html>