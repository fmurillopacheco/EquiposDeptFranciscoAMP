<%-- 
    Document   : insertar
    Created on : 10-jun-2020, 13:50:38
    Author     : Francisco_Antonio
--%>

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
        <title>Crear Grupo.</title>
    </head>
    <body>
    <div class="container">
            <form action="../../../Realizar" method="post">
            <h1>Alta de Grupos.</h1>
                <div class="form-group">
                    <label for="denominacion">Demoninaci&oacute;n Grupo:</label>
                    <input id="denominacion" type="text" class="form-control" placeholder="Introduce nombre del grupo." name="denominacion" value="">
                </div>
                <div class="form-group">
                    <label for="tutor">Nombre del Tutor del Grupo:</label>
                    <input id="tutor" type="text" class="form-control" placeholder="Introduuce Nombre del tutor del Grupo." name="tutor" value="">
                </div>

                <button class="btn btn-info" type="submit" value="cancelar" name="operacion" onclick="location.href='index.html';">Cancelar</button>
                <button class="btn btn-info" id="insertar" type="submit" value="insertarGrupo" name="operacion">Alta</button> 

    
            </form>
        </div>
    </body>
</html>
