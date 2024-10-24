<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Detalle de Canción</title>
	</head>
	<body>
		<h1>Detalle de Canción:</h1>
		<ul>
			<li><p>Titulo: ${cancion.titulo}</p></li>
			<li><p>Artista: ${cancion.artista}</p></li>
			<li><p>Album: ${cancion.album}</p></li>
			<li><p>Genero: ${cancion.genero}</p></li>
			<li><p>Idioma: ${cancion.idioma}</p></li>
			<li><a href='<c:url value="/canciones"/>'>Volver a Lista de Canciones</a></li>
		</ul>
	</body>
</html>