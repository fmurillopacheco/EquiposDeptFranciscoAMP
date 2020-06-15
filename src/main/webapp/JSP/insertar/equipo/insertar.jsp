<%-- 
    Document   : insertar
    Created on : 10-jun-2020, 13:51:41
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
        <title>Crear Equipo.</title>
    </head>
    <body>
    <div class="container">
            <form action="../../../Realizar" method="post">
            <h1>Alta de Equipos.</h1>
                <div class="form-group">
                    <label for="marca">Marca:</label>
                    <input id="marca" type="text" class="form-control" placeholder="Introduce marca de equipo." name="marca" value="">
                </div>
                <div class="form-group">
                    <label for="numSerie">N&uacute;mero de Serie:</label>
                    <input id="numSerie" type="text" class="form-control" placeholder="ABC-12345." name="numSerie" value="">
                </div>
                <div class="form-group">
                    <input type="file" class="form-control-file border" name="avatar">
                </div>
                <button class="btn btn-info" type="submit" value="cancelar" name="operacion" onclick="location.href='index.html';">Cancelar</button>
                <button class="btn btn-info" id="insertar" type="submit" value="insertarEquipo" name="operacion">Alta</button> 

    
            </form>
        </div>
    </body>
</html>
