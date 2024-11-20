<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle canción:</title>
<link rel="stylesheet" href="/css/Style.css">
</head>
<body>
	<header>
		<h1>Detalle canción:</h1>
	</header>
	
	<div class="container">
		<div class="card">
			<ul>
				<li>Titulo: <b>${cancion.titulo}</b></li>
				<li>Artista: <b>${cancion.artista.nombre} ${cancion.artista.apellido}</b></li>
				<li>Album: <b>${cancion.album}</b></li>
				<li>Género: <b>${cancion.genero}</b></li>
				<li>Idioma: <b>${cancion.idioma}</b></li>
			</ul>
			<a href="/canciones/formulario/editar/${cancion.id}">Editar cancion</a>
			
			<form action="/canciones/eliminar/${cancion.id}" method="POST">
				<input type="hidden" name="_method" value="DELETE" />
				<button>Eliminar</button>
			</form>
		</div>
		<div class="card">
			<li><a href="/canciones"><button>Volver</button></a><li>
		</div>
	</div>
	
</body>
</html>