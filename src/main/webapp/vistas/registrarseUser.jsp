
<!DOCTYPE html>
<html>
    <head>
        <title>Registro de usuario</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_registrarse_user.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>   

    </head>
    <body>

        <jsp:include page="../vistas_comunes/menu_principal_logo.jsp"/>

        <div class="container-fluid contenedor-create-user">
            <div class="row fila-create-user">



                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 p-0 m-0 columna-create-user">

                    <div id="formulario-transparencia">
                    </div>


                    <div id="contenedor-formulario-user-login">


                        <form class="formulario-inicio-administrador" id="formulario-inicio-administrador" action="/ControladorUserPass" method="POST">
                            <fieldset class="fieldsetclase-uno">
                                <legend id="titulo-registro">Ingresa aquí</legend>
                                <table class="tabla-primera-cajas-formulario">
                                    <tr>
                                        <td><label>Nombre o nick name</label></td>
                                    </tr>
                                    <tr>                                
                                        <td><input type="text" name="name-form-user" class="cajasform"></td>
                                    </tr>
                                    <tr>
                                        <td><label>Teléfono</label></td>
                                    </tr>
                                    <tr>                                
                                        <td><input type="text" name="celphone-form-user" class="cajasform"></td>
                                    </tr>
                                    <tr>
                                        <td><label>correo electrónico</label></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="mail-form-user" class="cajasform"></td>
                                    </tr>
                                    <tr>
                                        <td><label>crear contraseña</label></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="password-form-user" class="cajasform"></td>
                                    </tr>
                                </table>
                            </fieldset>

                            <fieldset class="fieldsetclase-dos"> 
                                <table id="tabla-segunda-boton-formulario">
                                    <tr>
                                        <td><input id="boton" type="submit" name="accion" value="RegistrarUsuario"></td>
                                    </tr>
                                </table>
                            </fieldset>
                        </form>
                    </div>

                </div> 
            </div> 
        </div> 

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    </body>
</html>
