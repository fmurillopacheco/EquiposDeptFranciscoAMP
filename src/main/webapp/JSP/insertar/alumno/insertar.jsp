<%-- 
    Document   : insertar
    Created on : 10-jun-2020, 13:52:18
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
        <title>Crear Usuario.</title>
    </head>
    <body>
        <div class="container">
            <form action="../../../Realizar" method="post">
            <h1>Alta de Alumnos.</h1>
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input id="nombre" type="text" class="form-control" placeholder="Introduce nombre del alumno." name="nombre" required>
                </div>
                <div class="form-group">
                    <label for="apellidos">Apellidos:</label>
                    <input id="apellidos" type="text" class="form-control" placeholder="Introduce Apellidos." name="apellidos" >
                </div>
                <div class="form-group">
                    <label for="grupo">Grupo:</label>
                        <select class="form-control" name="grupo" id="grupo">
                        <option value="0">Escoge equipo</option>
                        <c:forEach var="e" items="${equipos}">
                            <option value="${e.idEquipo}">${e.idEquipo} - ${e.marca} - ${e.numserie}</option>
                        </c:forEach>
                        </select>
                </div>
                <div class="form-group">
                    <label for="dni">NIF/NIE:</label>
                    <input type="text" id="nif" class="form-control" placeholder="Introduce NIF ó NIE del Alumno." name="nif">
                </div> 
                <div class="form-group">
                    <label for="fecha">Fecha de nacimiento:</label>
                    <input type="date" id="fecha" class="form-control" name="fecha">
                </div>
                <div class="form-group">
                    <label>Sexo: </label>
                    <div class="form-check">
                        <label class="form-check-label" for="Mujer">
                            <input type="checkbox" class="form-check-input" id="hombre" name="sexo" value="m">Mujer.
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" for="Hombre">
                            <input type="checkbox" class="form-check-input" id="hombre" name="sexo" value="h">Hombre.
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label" for="Otro">
                            <input type="checkbox" class="form-check-input" id="otro" name="otro" value="o">Otro.
                        </label>
                    </div>
                    <br>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" id="email" class="form-control" name="email" placeholder="Introduce una direcci&oacute;n de correo electr&oacute;nico v&aacute;lida.">
                </div>
                </div>
                <button class="btn btn-info" type="submit" value="cancelar" name="operacion" onclick="location.href='index.html';">Cancelar</button>
                <button class="btn btn-info" id="insertar" type="submit" value="insertarUsuario" name="operacion">Alta</button> 

    
            </form>
        </div>
        <script src="../../../JS/validacionFormulario.js"></script>
    </body>
</html>
