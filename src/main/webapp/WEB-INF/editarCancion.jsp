<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Canción</title>
</head>
<link rel="stylesheet" href="/css/Style.css">
<body>
	<header>
    	<h1>Editar cancion</h1>
    </header>

	<div class="container">
		<div class="card">
		    <form:form action="/canciones/procesa/editar/${cancion.id}" method="POST" modelAttribute="cancion">
		    <input type="hidden" name="_method" value="PUT"/>
		        <div>
		            <form:label path="titulo">Titulo:</form:label>
		            <form:input type="text" path="titulo" value="${cancion.titulo}"/>
		            <form:errors path="titulo" cssClass="error" />
		        </div>
		        
		        <div>
		            <form:label path="artista">Artista:</form:label>
		            <form:select path="artista">
		            <c:forEach var="artista" items="${listaArtistas}">
					<option value="${artista.id}"
						<c:if test="${artista.id == cancion.artista.id}">selected</c:if>
					>${artista.nombre} ${artista.apellido}</option>
					</c:forEach>
		            </form:select>
		            <form:errors path="artista" cssClass="error" />
		        </div>
		
		        <div>
		            <form:label path="album">Álbum:</form:label>
		            <form:input type="text" path="album" value="${cancion.album}"/>
		            <form:errors path="album" cssClass="error" />
		        </div>
		
		        <div>
		            <form:label path="genero">Género:</form:label>
		            <form:input type="text" path="genero" value="${cancion.genero}"/>
		            <form:errors path="genero" cssClass="error" />
		        </div>
		
		        <div>
		            <form:label path="idioma">Idioma:</form:label>
		            <form:input type="text" path="idioma" value="${cancion.idioma}"/>
		            <form:errors path="idioma" cssClass="error" />
		        </div>
		
		        <div>
		            <input type="submit" value="Agregar Canción" />
		        </div>
		    </form:form>
		  </div>

   		<div class="card">
        	<li><a href="/canciones"><button>Volver a lista de canciones</button></a></li>
   	 	</div>
   	 </div>
</body>
</html>
