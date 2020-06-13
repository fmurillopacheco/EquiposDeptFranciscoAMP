window.load=iniciar;

//esta a la escucha para que se produzca el evento.
function iniciar(){
    document.getElementById("enviar").addEventListener('click',validar,false);
}

function validaNombre(){
    var elemento=document.getElementById("nombre");
    if(!elemento.checkValidity()){
        if(elemento.validity.valueMissing){
            error2(elemento,"Debes introducir tu nombre.");
        }
        return false;
    }else{
        return true;
    }
}

function validaApellidos(){
    var elemento=document.getElementById("apellidos");
    if(!elemento.checkValidity()){
        if(elemento.validity.valueMissing){
            error2(elemento,"Debes introducir tu apellido.");
        }
        return false;
    }else{
        return true;
    }
}

function iniciar(){
    document.getElementById("enviar").addEventListener('click',validar,false);
}

// validar NIF.
function validaNif(dni){
    var numero
    var letr
    var letra
    var expresion_regular_dni

    expresion_regular_dni = /^\d{8}[a-zA-Z]$/;

    if(expresion_regular_dni.test (dni) == true){
        numero = dni.substr(0,dni.length-1);
        letr = dni.substr(dni.length-1,1);
        numero = numero % 23;
        letra='TRWAGMYFPDXBNJZSQVHLCKET';
        letra=letra.substring(numero,numero+1);
            if (letra!=letr.toUpperCase()) {
                alert('Dni erroneo, la letra del NIF no se corresponde');
                }else{
                    alert('Dni correcto');
                    }
        }else{
            alert('Dni erroneo, formato no válido');
            }
}

function validaEmail(){
    var elemento=document.getElementById("email");
    if(!elemento.checkValidity()){
        if(elemento.validity.valueMissing){
            error2(elemento,"Debes introducir una dirección de email.");
        }
        return false;
    }else{
        return true;
    }
}

function validaSexo(){
    var elemento=document.getElementById("sexo");
    if(!elemento.checkValidity()){
        if(elemento.validity.valueMissing){
            error2(elemento,"Selecciona una opción.");
        }
        return false;
    }else{
        return true;
    }
}
function validar(e){
    borrarError();
    if(validaNombre() && validaApellidos() && validaNif() && validaEmail()  && validaSexo() && confirm("Pulsa aceptar si deseas enviar el formulario.")){
        return true;
    }else{
        e.preventDefault();//previene que el formulario se envie si los datos no son correctos.
        return false;
    }
}

//Marca en rojo el campo que tiebe el error.
function error(elemento){
    document.getElementById("mensajeError").innerHTML=elemento.validationMessage;
    elemento.className="error";
    elemento.focus();//establecemos el foco para que se establezca en ese elemento.
}

//para que nos limpie el error.
function borrarError(elemento){//recorre el formulario y elimina el error.
    var formulario=document.forms[0];
    //recorremos el formulario con un for
    for(var i=0;i<formulario.elements.length;i++)
        formulario.elements[i].className="";
}

function error2(elemento,mensaje){
    document.getElementById("mensajeError").innerHTML=mensaje;
    elemento.className="error";
    elemento.focus();
}


