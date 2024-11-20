<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Canciones</title>
<link rel="stylesheet" href="/css/Style.css">
</head>
<body>
	<header>
	<h1>Canciones: </h1>
	</header>
	
	<div class="container">
		<div class="card">
			<div>
				<c:forEach var="cancion" items="${canciones}">
					<div class= "info">
						<li>Titulo: ${cancion.titulo}</li>
						<li>Artista: ${cancion.artista.nombre} ${cancion.artista.apellido}</li>
					</div>
					<a href="/canciones/detalle/${cancion.id}">Ver detalle</a>
				</c:forEach>
			</div>
		</div>
		<div class="card">
			<li><a href="/formulario/agregar"><button>Agregar Canción</button></a></li>
			<li><a href="/artistas"><button>Ver artistas</button></a></li>
		</div>
	</div>
</body>
</html>