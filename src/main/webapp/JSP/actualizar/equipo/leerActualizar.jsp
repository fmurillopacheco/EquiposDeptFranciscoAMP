<%-- 
    Document   : leerActualizar
    Created on : 10-jun-2020, 13:57:58
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

        <title>Actualizar usuarios: </title>
    </head>
    <body>
        <form action="/Realizar" method="post">
            <h2>Usuario a actualizar. </h2>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellidos</th>
                        <th scope="col">nif</th>
                        <th scope="col">Fecha de Nacimiento</th>
                        <th scope="col">Sexo</th>
                        <th scope="col">Email</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <c:forEach var="alumnos" items="${alumno}">
                            <td>${alumno.nombre}</td>
                            <td>${alumno.apellidos}</td>
                            <td>${alumno.nif}</td>
                            <td>${alumno.fechaNacimiento}</td>
                            <td>${alumno.sexo}</td>
                            <td>${alumno.email}</td>
                        </c:forEach>
                    </tr>
                </tbody>
            </table>

            <button class="btn btn-info" type="submit" value="cancelar" name="operacion">Cancelar</button>
            <button class="btn btn-info" id="actualizar" type="submit" value="aceptarActualizar" name="operacion">Actualizar</button>
        </form>
    </body>
</html>

