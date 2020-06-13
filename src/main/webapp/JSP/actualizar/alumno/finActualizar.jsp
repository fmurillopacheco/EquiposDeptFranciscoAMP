<%-- 
    Document   : finActualizar
    Created on : 10-jun-2020, 13:59:07
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
        <title>Actualización de Alumnos.</title>
    </head>
    <body>
        <h1>Actualización de Alumnos.</h1>
        <h2>Se ha actualizado el usuario ${Alumno.nombre}:</h2>
        <form action="ControladorFinal" method="post" class="form-inline">
            <ul class="list-unstyled">
               <li>Id Alumno: <strong>${alumno.idAlumno}</strong></li>
               <li>Nombre: <strong>${alumno.nombre}</strong></li>
               <li>Fecha de nacimiento: <strong>${alumno.fechaNacimiento}</strong></li>
               <li>avatar: <strong>${alumno.avatar}</strong></li>
            </ul>

        </form>
        <button type="submit" value="menu" name="operacion">Menú</button>
    </body>
</html>
