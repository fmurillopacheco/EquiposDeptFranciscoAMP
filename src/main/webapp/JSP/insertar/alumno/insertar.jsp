<%-- 
    Document   : insertar
    Created on : 10-jun-2020, 13:52:18
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
        <title>Crear Usuario.</title>
    </head>
    <body>
        <div class="container">
            <form action="../../../Realizar" method="post">
            <h1>Alta de Alumnos.</h1>
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input id="nombre" type="text" class="form-control" placeholder="Introduce nombre del alumno." name="nombre" value="nombre" required>
                </div>
                <div class="form-group">
                    <label for="apellidos">Apellidos:</label>
                    <input id="apellidos" type="text" class="form-control" placeholder="Introduce Apellidos." name="apellidos" value="apellidos">
                </div>
                <div class="form-group">
                    <label for="grupo">Grupo:</label>
                        <select class="form-control" name="grupo" id="grupo">
                            <option value="">Selecciona una opción</option>
                            <option value="">${grupo.denominacion}</option>
                        </select>
                </div>
                <div class="form-group">
                    <label for="dni">NIF/NIE:</label>
                    <input type="text" id="nif" class="form-control" placeholder="Introduce NIF ó NIE DEL Alumno." name="nif" value="nif">
                </div> 
                <div class="form-group">
                    <label for="fecha">Fecha de nacimiento:</label>
                    <input type="date" id="fecha" class="form-control" name="fecha" value="fechaNacimiento">
                </div>
                <div class="form-group">
                <label>Sexo: </label>
                <select class="form-control" name="sexo" id="sexo">
                    <option value="">Selecciona una opción</option>
                    <option value="h">Hombre</option>
                    <option value="m">Mujer</option>
                    <option value="o">Otro</option>
                </select>
                </div> 

                <button type="submit" value="cancelar" name="operacion">Cancelar</button>
                <button id="insertar" type="submit" value="insertarUsuario" name="operacion">Actualizar usaurio</button> 

    
            </form>
        </div>
        <script src="../../../JS/validacionFormulario.js"></script>
    </body>
</html>
