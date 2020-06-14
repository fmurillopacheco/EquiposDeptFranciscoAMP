<%-- 
    Document   : visualizarAlumnos
    Created on : 10-jun-2020, 13:42:23
    Author     : Francisco_Antonio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <!-- Archivo de estilos de la página. -->
        <%@include file="/INC/metas.inc"%>
        <title>Listado de Alumnos.</title>
    </head>
    <body>
        <div id="container">
            <h2>Listado de Alumnos.</h2>
            <form action="../../../Realizar" method="post">
            <ol id="lista" class="list-group list-group-flush"></ol>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">Apellidos</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Denominaci&oacute;n Grupo</th>
                        <th scope="col">Marca equipo</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="alumnos" items="${alumno}">
                        <tr>
                            <td>${alumno.apellidos}</td>
                            <td>${alumno.nombre}</td>
                            <c:forEach var="grupos" items="${grupo}">
                                <td>${grupo.denominacion}</td>
                            </c:forEach>
                            <c:forEach var="equipos" items="${equipo}">
                                <td>${eqiopo.marca}</td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            </form>
        </div>
        <div id="container1" class="col text-center">
            <c:url var="index" value="index.html"/><input type="button" class="btn btn-info" value=" Volver "></a>
        </div>

    </body>
</html>
