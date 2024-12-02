
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Formulario Cliente</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_formulario_cliente.css">
        <script defer type="text/javascript" src="scripts_javascript/scripts.js"></script>
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>         

    </head>
    <body>

        <jsp:include page="../vistas_comunes/menu_principal.jsp"/>
        <jsp:include page="../vistas_comunes/whatsapp_icon.jsp"/>

        <div class="container-fluid p-0" style="margin-top:10vh;">
            <div class="row p-0 m-0">
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-formulario-cliente-login p-0 m-0">

                    <div class=" container-fluid formulario-inicio-cliente m-0 p-0">
                        <div class="row contenedordiv-elementos-formulario p-0 m-0">

                            <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 contenedordiv-elementos-formulario-dos p-0">
                                <form class="formulario-registro" action="/ControladorClientes" method="POST">



                                    <!--rótulo nombre -->
                                    <div class="tittle-formulario">    
                                        <h1>Domicilio de entrega</h1>
                                    </div>

                                    <div class="rotulo-entrega">    
                                        <h3>Ingresa únicamente los campos vacíos o que desees actualizar (* datos obligatorios)</h3>
                                    </div>

                                    <div class="elementos-formulario">
                                        <!--nombre -->
                                        <div class=" clase-etiquetas-form">
                                            <label for="campo-nombre" class="col-form-label etiqueta-formulario-cliente"><p>Usuario: </p></label>
                                            <label id="campo-nombre" class="col-form-label etiqueta-formulario-cliente"><p>${cliente.nombre}</p></label>
                                        </div>

                                        <!--calle -->
                                        <div class="clase-etiquetas-form">
                                            <label for="campo-calle" class="col-form-label etiqueta-formulario-cliente"><p>Calle *:</p></label>
                                            <input type="text" id="campo-calle" class="cajas-form" name="calle-form-cliente" placeholder="${cliente.calle}">
                                        </div>

                                        <!--número exterior -->
                                        <div class="clase-etiquetas-form">
                                            <label for="campo-numero-exterior" class="col-form-label etiqueta-formulario-cliente"><p>Número exterior *:</p></label>
                                            <input type="text" id="campo-numero-exterior" class="cajas-form" name="numeroexterior-form-cliente" placeholder="${cliente.numeroExterior}" pattern="[0-9]*" title="Por favor ingrese solo números para que el domicilio se pueda registrar">
                                        </div>
                                        <!--número interior-->

                                        <div class="clase-etiquetas-form">
                                            <label for="campo-numero-interior" class="col-form-label etiqueta-formulario-cliente"><p>Número interior:</p></label>
                                            <input type="text" id="campo-numero-interior" class="cajas-form" name="numerointerior-form-cliente" placeholder="${cliente.numeroInterior}">
                                        </div>

                                        <!--colonia -->

                                        <div class="clase-etiquetas-form">
                                            <label for="campo-colonia" class="col-form-label etiqueta-formulario-cliente"><p>Colonia *:</p></label>
                                            <input type="text" id="campo-colonia" class="cajas-form" name="colonia-form-cliente" placeholder="${cliente.colonia}">
                                        </div>

                                        <!--delegación -->

                                        <div class="clase-etiquetas-form">
                                            <label for="campo-delegacion" class="col-form-label etiqueta-formulario-cliente"><p>Delegación *:</p></label>
                                            <input type="text" id="campo-delegacion" class="cajas-form" name="delegacion-form-cliente" placeholder="${cliente.delegacion}">
                                        </div>

                                        <!--código postal -->

                                        <div class="clase-etiquetas-form">
                                            <label for="campo-cp" class="col-form-label etiqueta-formulario-cliente"><p>Código postal *:</p></label>
                                            <input type="text" id="campo-cp" class="cajas-form" name="cp-form-cliente" placeholder="${cliente.codigoPostal}" pattern="[0-9]*" title="Por favor ingrese solo números para que el domicilio se pueda registrar">
                                        </div>                                                

                                        <div class="clase-etiquetas-form">
                                            <label for="campo-telefono" class="col-form-label etiqueta-formulario-cliente"><p>Teléfono *:</p></label>
                                            <input type="text" id="campo-telefono" class="cajas-form" name="telefono-form-cliente" placeholder="${cliente.telefono}" pattern="[0-9]*" title="Por favor ingrese solo números para que el domicilio se pueda registrar">
                                        </div>

                                        <!--vacía para espacio -->
                                        <div class="clase-etiquetas-form-boton"> 
                                            <button type="submit" class="boton-administrador-login" name="accion" value="Actualizardatospedido" onclick="validarCampos();"><p>Enviar</p></button>
                                        </div>

                                    </div>

                                </form>
                            </div>                                            

                            <script>



                                function validarCampos() {
                                    var placeholderCalle = document.getElementById("campo-calle").placeholder;
                                    var placeholderNe = document.getElementById("campo-numero-exterior").placeholder;
                                    var placeholderColonia = document.getElementById("campo-colonia").placeholder;
                                    var placeholderDelegacion = document.getElementById("campo-delegacion").placeholder;
                                    var placeholderCp = document.getElementById("campo-cp").placeholder;


                                    var campoCalle = document.getElementById("campo-calle").value;
                                    var campoNe = document.getElementById("campo-numero-exterior").value;
                                    var campoColonia = document.getElementById("campo-colonia").value;
                                    var campoDelegacion = document.getElementById("campo-delegacion").value;
                                    var campoCp = document.getElementById("campo-cp").value;

                                    console.log("Valor de los campos " + campoCalle + campoNe + campoColonia + campoDelegacion + campoCp);

                                    if (((campoCalle.trim() === "" && placeholderCalle.trim() !== "")
                                            || (campoNe.trim() === "" && placeholderNe.trim() !== "")
                                            || (campoColonia.trim() === "" && placeholderColonia.trim() !== "")
                                            || (campoDelegacion.trim() === "" && placeholderDelegacion.trim() !== "")
                                            || (campoCp.trim() === "" && placeholderCp.trim() !== ""))
                                            ||
                                            ((campoCalle.trim() !== "" && placeholderCalle.trim() === "")
                                                    || (campoNe.trim() !== "" && placeholderNe.trim() === "")
                                                    || (campoColonia.trim() !== "" && placeholderColonia.trim() === "")
                                                    || (campoDelegacion.trim() !== "" && placeholderDelegacion.trim() === "")
                                                    || (campoCp.trim() !== "" && placeholderCp.trim() === ""))) {

                                        alert("Domicilio registrado, gracias");
                                    } else {
                                        alert("Por favor, complete todos los campos.");
                                    }
                                }
                                ;
                            </script>

                        </div>
                    </div>

                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    </body>
</html>
