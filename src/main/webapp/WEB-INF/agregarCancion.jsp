<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Cancion</title>
</head>
<body>
    <h1>Agregar Cancion</h1>
    <form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="nuevaCancion">
        <div>
            <form:label path="titulo">Título: </form:label>
            <form:input path="titulo" type="text"></form:input>
            <form:errors path="titulo"/>
        </div>
        <div>
            <form:label path="artista">Artista: </form:label>
            <form:input path="artista" type="text"></form:input>
            <form:errors path="artista"/>
        </div>
        <div>
            <form:label path="album">Álbum: </form:label>
            <form:input path="album" type="text"></form:input>
            <form:errors path="album"/>
        </div>
        <div>
            <form:label path="genero">Género: </form:label>
            <form:input path="genero" type="text"></form:input>
            <form:errors path="genero"/>
        </div>
        <div>
            <form:label path="idioma">Idioma: </form:label>
            <form:input path="idioma" type="text"></form:input>
            <form:errors path="idioma"/>
        </div>
        <button>
            Añadir cancion
        </button>
    </form:form>
    <form action="/canciones" method="get">
        <button>Volver</button>
    </form>
    <!-- titulo, artista, album, genero, idioma -->
</body>
</html>