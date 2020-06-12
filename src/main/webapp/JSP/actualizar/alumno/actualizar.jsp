<%-- 
    Document   : actualizar
    Created on : 10-jun-2020, 13:58:35
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
        

        <title>Actualizar Datos.</title>
        <title>Actualizar Datos de Alumnos.</title>
    </head>
    <body>
        <div class="container">
            <form action="/Realizar" class="needs-validation" novalidate method="post">
            <h1>Actualizar Datos de usuario.</h1>
                <div class="form-group">
                    <label for="id">IdAlumno: ${usuario.id}</label>
                </div>
                <div class="form-group">
                    <label for="nombreUsu">Nombre:</label>
                    <input type="text" class="form-control" placeholder="Introduce nombre del alumno." name="nombre" value="${usuario.nombre}">
                    <div class="valid-feedback">OK.</div>
                    <div class="invalid-feedback">Por favor, rellena este campo.</div>
                </div>
                <div class="form-group">
                    <label for="apellidos">Apellidos:</label>
                    <input type="text" class="form-control" placeholder="Introduce Apellidos." name="apellidos" value="${usuario.apellidos}">
                    <div class="valid-feedback">OK.</div>
                    <div class="invalid-feedback">Por favor, rellena este campo.</div>
                </div> 
                <div class="form-group">
                    <label for="idGrupo">IdGrupo:</label>
                    <input type="text" class="form-control" placeholder="Introduce identificaci&oacute;n del grupo." name="idGrupo" value="${usuario.idGrupo}">
                    <div class="valid-feedback">OK.</div>
                    <div class="invalid-feedback">Por favor, rellena este campo.</div>
                </div>
                <div class="form-group">
                    <label for="apellidos">NIF/NIE:</label>
                    <input type="text" class="form-control" placeholder="Introduce NIF ó NIE DEL Alumno." name="nif" value="${usuario.nif}">
                    <div class="valid-feedback">OK.</div>
                    <div class="invalid-feedback">Por favor, rellena este campo.</div>
                </div> 
                <div class="form-group">
                    <label for="fecha">Fecha de nacimiento:</label>
                    <input type="date" class="form-control" name="fecha" ${usuario.fechaNacimiento}>
                    <div class="valid-feedback">OK.</div>
                    <div class="invalid-feedback">Por favor, rellena este campo.</div>
                </div>
                <div class="form-group">
                    <label for="sexo">Sexo:</label>
                    <input type="text" class="form-control" placeholder="Introduce el Sexo del Alumno." name="sexo" value="${usuario.sexo}">
                    <div class="valid-feedback">OK.</div>
                    <div class="invalid-feedback">Por favor, rellena este campo.</div>
                </div> 
                <div class="form-group">
                    <label for="avatar">Por favor selecciona tu avatar:</label>
                    <input type="file" class="form-control-file border" name="avatar" value="${usuario.avatar}">
                </div>
                <button type="submit" value="cancelar" name="operacion">Cancelar</button>
                <button id="insertar" type="submit" value="insertarUsuario" name="operacion">Actualizar usaurio</button> 

    
            </form>
        </div>
<script>
            // Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
    </body>
</html>
