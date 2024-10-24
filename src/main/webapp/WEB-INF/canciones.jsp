<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Canciones</title>
	</head>
	<body>
	<h1>Lista de canciones:</h1>
		<table border="1">
			<thead>
				<tr>
					<th>Titulo</th>
					<th>Autor</th>
					<th>Detalle</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cancion" items="${canciones}">
					<tr>
						<td>${cancion.titulo}</td>
						<td>${cancion.artista}</td>
						<td><a href='<c:url value="/canciones/detalle/${cancion.id}"/>'>Ver Detalle</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>