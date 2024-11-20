<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Artista:</title>
<link rel="stylesheet" href="/css/Style.css">
</head>
<body>
	<header>
		<h1>Ingresa los datos del Artista:</h1>
	</header>
		
	<div class="container">
		<div class="card">
			<form:form action="/artistas/procesa/agregar" method="POST" modelAttribute="artista">
				<div>
					<form:label path="nombre">Nombre:</form:label>
					<form:input path="nombre" type="text"/>
					<form:errors path="nombre"/>
				</div>
				<div>
					<form:label path="apellido">Apellido:</form:label>
					<form:input path="apellido" type="text"/>
					<form:errors path="apellido"/>
				</div>
				<div>	
					<form:label path="biografia">Biografía:</form:label>
					<form:input path="biografia" type="text"/>
					<form:errors path="biografia"/>
				</div>	
					<input type="submit" value="Agregar Artista">
			</form:form>
		</div>
		<div class="card">
			<li><a href="/artistas"><button>Volver a Lista de Artistas</button></a></li>
		</div>
	</div>

</body>
</html>