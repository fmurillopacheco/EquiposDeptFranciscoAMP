<%-- 
    Document   : leerActualizar
    Created on : 10-jun-2020, 13:56:50
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

        <title>Actualizar Grupos: </title>
    </head>
    <body>
        <form action="/Realizar" method="post">
            <h2>Grupo a actualizar. </h2>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">idGrupo</th>
                        <th scope="col">Denominaci&oacute;n</th>
                        <th scope="col">Tutor</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <c:forEach var="grupos" items="${grupo}">
                            <td>${grupo.idGrupo}</td>
                            <td>${grupo.denominacion}</td>
                            <td>${grupo.tutor}</td>
                        </c:forEach>
                    </tr>
                </tbody>
            </table>

            <button class="btn btn-info" type="submit" value="cancelar" name="operacion">Cancelar</button>
            <button class="btn btn-info" id="actualizar" type="submit" value="aceptarActualizar" name="operacion">Actualizar</button>
        </form>
    </body>
</html>

