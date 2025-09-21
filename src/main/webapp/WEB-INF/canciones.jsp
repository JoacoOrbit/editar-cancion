<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Canciones</title>
</head>
<body>
    <table>
        <thead style="color: red;">
            <tr >
                <th>Nombre</th>
                <th>Artista</th>
                <th>Album</th>
                <th>Genero</th>
                <th>Idioma</th>
                <th>Detalles</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="cancion" items="${listaCanciones}">
                <tr>
                    <th>${cancion.titulo}</th>
                    <th>${cancion.artista}</th>
                    <th>${cancion.album}</th>
                    <th>${cancion.genero}</th>
                    <th>${cancion.idioma}</th>
                    <th><a href="/canciones/detalle/${cancion.id}">mostrar detalles</a></th>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <form action="/canciones/formulario/agregar" method="GET">
        <button>Añadir canción</button>
    </form>
</body>
</html>