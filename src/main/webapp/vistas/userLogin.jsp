    
<!DOCTYPE html>
<html>
    <head>
        <title>Registro de usuario</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_user_login.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>   

    </head>
    <body>

        <jsp:include page="../vistas_comunes/menu_principal_logo.jsp"/>
        <jsp:include page="../vistas_comunes/whatsapp_icon.jsp"/>

        <div class="container-fluid contenedor-user-login">
            <div class="row fila-user-login">


                <!--COLUMNA IZQUIERDA-->
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 p-0 m-0 columna-user-login-left">

                </div> 
                <!--COLUMNA IZQUIERDA-->

                <!--COLUMNA DERECHA-->
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 p-0 m-0 columna-user-login-right">

                    <div id="formulario-transparencia">
                    </div>

                    <div id="contenedor-formulario-user-login">




                        <form class="formularios" id="formulario-uno" action="/ControladorClientes" method="POST">
                            <fieldset class="fieldsetclase-uno">
                                <legend id="titulo-registro">Ingresa aquí</legend>
                                <table class="tabla-primera-cajas-formulario">
                                    <tr>
                                        <td><input type="text" name="usuario" class="cajasform" placeholder="correo_electronico@mail.com"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="password" name="contrasena" class="cajasform" placeholder="contraseña"></td>
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


                        <form class="formularios" id="formulario-dos" action="/ControladorUserPass" method="POST">
                            <fieldset class="fieldsetclase-tres">

                                <h3 id="text-new-user">Usuario Nuevo</h3>
                                <table id="tabla-tercera-boton-formulario">
                                    <tr>
                                        <td><input id="boton-registro" type="submit" name="accion" value="Registrarse"></td>
                                    </tr>
                                </table>

                            </fieldset>

                        </form>                      

                    </div>
                    
                    <div id="label-password-failure">
                            <p class="parrafo-user-pass-failure">${formularioDatosIncorrectos}</p>
                    </div>

                </div>
                <!--COLUMNA DERECHA-->       













            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    </body>
</html>
