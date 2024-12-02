
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Módulo Administración</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../estilos_administrador/administrador_clientes.css">
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

        <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN -->

        <div class="container-fluid contenedor-acordeon">
            <div class="row fila-acordeon p-0 m-0">
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-acordeon p-0 m-0">

                    <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> 
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        
                        <!--ACORDEÓN 1er ITEM-->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingThree">
                                <button class="accordion-button collapsed botones-acordeon" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                    Consultar clientes
                                </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">

                                    <!--TABLA CONSULTAR TODOS LOS PRODUCTOS-->
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="crear-producto-columna-id">Consultar todos los Clientes</th>                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <form action="/ControladorClientes" method="POST" enctype="multipart/form-data">      
                                                        <button type="submit" class="consultar-todos-clientes" name="accion" value="ListarTodosClientes">Consultar</button>
                                                    </form> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!--TABLA CONSULTAR TODOS LOS PRODUCTOS-->

                                </div>
                            </div>
                        </div>
                        <!--ACORDEÓN 1er ITEM-->

                    </div>
                    <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> 

                </div>
            </div>
        </div>
        <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN -->
        <div class="container-fluid contenedor-finalizar-sesion">
            <div class="row fila-finalizar-sesion m-0">
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-finalizar-sesion p-0">
                    <form class="formulario-finalizar-sesion" action="/ControladorSucursales" method="POST">      
                        <button type="submit" class="btn btn-primary boton-finalizar-sesion" name="accion" value="Finalizar Sesión">Finalizar Sesión</button>
                    </form> 
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    </body>
</html>
