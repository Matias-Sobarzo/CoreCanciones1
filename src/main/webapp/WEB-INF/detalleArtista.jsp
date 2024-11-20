<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/Style.css">
</head>
<body>

	<header>
		<h1>Informacion artista:</h1>
	</header>
	
	<div class="container">
		<div class="card">	
		<h2>Datos personales</h2>
		<ul>
			<li>Nombre: <b>${detalleArtista.nombre}</b></li>
			<li>Apellido: <b>${detalleArtista.apellido}</b></li>
			<li>Biografía: 
			<p>${detalleArtista.biografia}</p></li>
		</ul>
		</div>
		<div class="card">
			<h2>Repertorio:</h2>
			<c:forEach var="cancion" items="${detalleArtista.listaCanciones}">
				<li><i>${cancion.titulo} </i></li>
				<a href="/canciones/detalle/${cancion.id}">Ver detalle</a>
			</c:forEach>
			
			<div>
				<li><a href="/artistas"><button>Volver a artistas</button></a></li>
			</div>
		</div>
	</div>	
		
</body>
</html>