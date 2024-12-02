    
<!DOCTYPE html>
<html>
    <head>
        <title>Administrador Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="../estilos_administrador/estilos_administrador_login.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>   

    </head>
    <body>

        <jsp:include page="../vistas_comunes/menu_principal_logo.jsp"/>
        <jsp:include page="../vistas_comunes/whatsapp_icon.jsp"/>

        <div class="container-fluid contenedor-administrador-login">
            <div class="row fila-administrador-login">


                <!--COLUMNA IZQUIERDA-->
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 p-0 m-0 columna-administrador-login-left">

                </div> 
                <!--COLUMNA IZQUIERDA-->

                <!--COLUMNA DERECHA-->
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 p-0 m-0 columna-administrador-login-right">

                    <div id="formulario-transparencia">
                    </div>

                    <div id="contenedor-formulario-administrador-login">




                        <form class="formularios" id="formulario-uno" action="/ControladorSucursales" method="POST">
                            <fieldset class="fieldsetclase-uno">
                                <legend id="titulo-registro">Ingresa aquí</legend>
                                <table class="tabla-primera-cajas-formulario">
                                    <tr>
                                        <td><input type="text" name="usuario" class="cajasform"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="contrasena" class="cajasform"></td>
                                    </tr>
                                </table>
                            </fieldset>

                            <fieldset class="fieldsetclase-dos"> 
                                <table id="tabla-segunda-boton-formulario">
                                    <tr>
                                        <td><input id="boton" type="submit" name="accion" value="Iniciar Sesión"></td>
                                    </tr>
                                </table>
                            </fieldset>
                        </form>

                 

                    </div>
                    
                    <div id="label-password-failure">
                            <p class="parrafo-user-pass-failure">${formularioAdminDatosIncorrectos}</p>
                    </div>

                </div>
                <!--COLUMNA DERECHA-->       













            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    </body>
</html>
