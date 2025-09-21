<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${cancion.titulo}</title>
</head>
<body>
    <h1>${cancion.titulo}</h1>
    <h2>Artista: ${cancion.artista}</h2>
    <h2>Álbum: ${cancion.album}</h2>
    <h2>Género: ${cancion.genero}</h2>
    <h2>Idioma: ${cancion.idioma}</h2>
    <a href="/canciones">volver</a>
</body>
</html>