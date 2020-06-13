<%-- 
    Document   : leerActualizar
    Created on : 10-jun-2020, 13:58:48
    Author     : Francisco_Antonio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <%@include file="/INC/metas.inc"%>
<!--        <link rel="stylesheet" type="text/css" href="CSS/gestionImgenesStyle.css">-->
        <title>Actualizar usuarios: </title>
    </head>
    <body>
        <form action="/Realizar" method="post">
            <h2>Usuario a actualizar. </h2>
            <c:forEach var="usuario" items="${alumnos}">
                <input type="checkbox" value="${alumno.idAlumno}" name="alumnosActualizar"><label id="listadoActualizar">${alumno.nombre} ${alumno.apellidos}</label>
                <br>
            </c:forEach>
            <br><br>

            <button type="submit" value="cancelar" name="operacion">Cancelar</button>
            <button id="actualizar" type="submit" value="aceptarActualizar" name="operacion">Actualizar</button>
        </form>
    </body>
</html>
