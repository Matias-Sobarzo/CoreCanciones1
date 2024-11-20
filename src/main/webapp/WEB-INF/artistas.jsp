<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Artistas</title>
<link rel="stylesheet" href="/css/Style.css">
</head>
<body>
	<header>
	<h1>Artistas: </h1>
	</header>
	
	<div class="container">
		<div class="card">
			<c:forEach var="artista" items="${artistas}">
				<li>${artista.nombre} ${artista.apellido}</li>
				<a href="/artistas/detalle/${artista.id}"><i>Ver detalle</i></a>
			</c:forEach>
		</div>
		<div class="card">
			<li><a href="/artistas/formulario/agregar"><button>Agregar artista</button></a></li>
			<li><a href="/canciones"><button>Volver a canciones</button></a></li>
		</div>
	</div>
</body>
</html>