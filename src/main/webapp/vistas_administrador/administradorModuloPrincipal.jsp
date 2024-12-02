
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Módulo Administración</title>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link rel="stylesheet" type="text/css" href="../estilos_administrador/administrador_modulo_principal.css">
            <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script> 
        </head>
        <body>

            <div class="container-fluid contenedor-titulo">
                <div class="row fila-titulo p-0 m-0">
                    <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-titulo p-0 m-0">
                        <div class="conten-titulo">
                            <div class="conte-tittle-text">                          
                                <h1>Módulo de Administración</h1> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--CONTENEDOR LINKS MENÚ--> <!--CONTENEDOR LINKS MENÚ--> <!--CONTENEDOR LINKS MENÚ--> <!--CONTENEDOR LINKS MENÚ-->
            <div class="container-fluid contenedor-titulo-menu-admin">
                <div class="row fila-titulo-menu-admin p-0 m-0">
                    <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-titulo-menu-admin p-0 m-0">

                        <div class="conten-enlaces-menu-admin">      
                            <a href="administradorPedidos.jsp">Administrar pedidos</a>
                            <a href="administradorProductos.jsp">Administrar productos</a>
                            <a href="administradorClientes.jsp">Administrar clientes</a> 
                        </div>

                    </div>
                </div>
            </div>
            <!--CONTENEDOR LINKS MENÚ--> <!--CONTENEDOR LINKS MENÚ--> <!--CONTENEDOR LINKS MENÚ--> <!--CONTENEDOR LINKS MENÚ-->

            <div class="container-fluid contenedor-finalizar-sesion">
                <div class="row fila-finalizar-sesion m-0">
                    <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-finalizar-sesion p-0">
                        <form action="/ControladorSucursales" method="POST">      
                            <button type="submit" class="boton-finalizar-sesion" name="accion" value="Finalizar Sesión">Finalizar Sesión</button>
                        </form> 
                    </div>
                </div>
            </div>
        </body>
    </html>
