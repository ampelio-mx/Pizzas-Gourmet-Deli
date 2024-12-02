
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Módulo Administración</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../estilos_administrador/administrador_productos.css">
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
        <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN --> <!--CONTENEDOR ACORDEÓN -->

        <div class="container-fluid contenedor-acordeon">
            <div class="row fila-acordeon p-0 m-0">
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-acordeon p-0 m-0">

                    <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> <!--ACORDEÓN --> 
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <!--ACORDEÓN 1er ITEM-->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingOne">
                                <button class="accordion-button collapsed botones-acordeon" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                    Crear productos
                                </button>
                            </h2>
                            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body cuerpo-acordeon">


                                    <!--TABLA CREAR PRODUCTO -->
                                    <div class="table-responsive-md tabla-responsiva-crear-pizzas">
                                        <table class="table tabla-crear-pizza">
                                            <thead class="filas-tabla-head">
                                                <tr>
                                                    <th scope="col" class="crear-producto-columna"></th>
                                                    <th scope="col" class="crear-producto-columna-id">Id Producto</th>
                                                    <th scope="col" class="crear-producto-columna-nombre">Nombre Producto</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Mini</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Individual</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Chica</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Mediana</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Grande</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Familiar</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Bebida</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Postre</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Antojito</th>
                                                    <th scope="col" class="crear-producto-columna-diferenciador">Diferenciador</th>
                                                    <th scope="col" class="crear-producto-columna-descripcion">Descripción</th>
                                                    <th scope="col" class="crear-producto-columna-imagen">Imagen</th>
                                                    <th scope="col" class="crear-producto-columna-boton"></th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <th scope="row" class="crear-producto-fila">CREAR PRODUCTO</th>
                                                    <td  class="crear-producto-fila-id">
                                                        <form action="/ControladorProductos" method="POST" enctype="multipart/form-data">
                                                            <input type="text" class="form-control campo-texto-idProducto" name="idProducto">
                                                            </td>
                                                            <td class="crear-producto-fila-nombre"><input type="text" class="form-control campo-texto-nameProducto" name="nombrePizza"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioMini"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioIndividual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioChica"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioMediana"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioGrande"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioFamilar"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioBebida"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioPostre"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioAntojito"></td>
                                                            <td class="crear-producto-fila-diferenciador"><input type="text" class="form-control campo-texto-diferenciadorProducto" name="diferenciadorPizza"></td>
                                                            <td class="crear-producto-fila-descripcion"><input type="text" class="form-control campo-texto-descripcionProducto" name="descripcionPizza"></td>
                                                            <td class="crear-producto-fila-imagen"><input type="file" class="form-control campo-agregar-archivo" name="imagenProducto"></td>
                                                            <td class="crear-producto-fila-boton"><button type="submit" class="boton-acordeon-enviar" name="accion" value="insertar">Insertar</button>
                                                        </form>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>                                        
                                    </div>
                                    <!--TABLA CREAR PIZZAS -->

                                </div>
                            </div>
                        </div>
                        <!--ACORDEÓN 1er ITEM-->

                        <!--ACORDEÓN 2o ITEM-->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingTwo">
                                <button class="accordion-button collapsed botones-acordeon" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                    Actualizar productos
                                </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body cuerpo-acordeon">

                                    <!--TABLA ACTUALIZAR PRODUCTO POR ID-->
                                    <div class="table-responsive-md tabla-responsiva-crear-pizzas">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="crear-producto-columna"></th>
                                                    <th scope="col" class="crear-producto-columna-id">Id Producto</th>
                                                    <th scope="col" class="crear-producto-columna-nombre">Nombre Producto</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Mini</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Individual</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Chica</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Mediana</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Grande</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Familiar</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Bebida</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Postre</th>
                                                    <th scope="col" class="crear-producto-columna-precio">Precio Antojito</th>
                                                    <th scope="col" class="crear-producto-columna-diferenciador">Diferenciador</th>
                                                    <th scope="col" class="crear-producto-columna-descripcion">Descripción</th>
                                                    <th scope="col" class="crear-producto-columna-imagen">Imagen</th>
                                                    <th scope="col" class="crear-producto-columna-boton"></th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <th scope="row" class="crear-producto-fila">ACTUALIZAR PRODUCTO</th>
                                                    <td  class="crear-producto-fila-id">
                                                        <form action="/ControladorProductos" method="POST" enctype="multipart/form-data">
                                                            <input type="text" class="form-control campo-texto-idProducto" name="idProductoActual">
                                                            </td>
                                                            <td class="crear-producto-fila-nombre"><input type="text" class="form-control campo-texto-nameProducto" name="nombrePizzaActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioMiniActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioIndividualActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioChicaActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioMedianaActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioGrandeActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioFamilarActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioBebidaActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioPostreActual"></td>
                                                            <td class="crear-producto-fila-precio"><input type="text" class="form-control campo-texto-precioProducto" name="precioAntojitoActual"></td>
                                                            <td class="crear-producto-fila-diferenciador"><input type="text" class="form-control campo-texto-diferenciadorProducto" name="diferenciadorPizzaActual"></td>
                                                            <td class="crear-producto-fila-descripcion"><input type="text" class="form-control campo-texto-descripcionProducto" name="descripcionPizzaActual"></td>
                                                            <td class="crear-producto-fila-imagen"><input type="file" class="form-control campo-agregar-archivo" name="imagenProductoActual"></td>
                                                            <td class="crear-producto-fila-boton"><button type="submit" class="boton-acordeon-enviar" name="accion" value="actualizar">Insertar</button>
                                                        </form>
                                                    </td>
                                                </tr>

                                            </tbody>    
                                        </table>
                                    </div>
                                    <!--TABLA ACTUALIZAR PRODUCTO POR ID-->


                                </div>
                            </div>
                        </div>
                        <!--ACORDEÓN 2o ITEM-->

                        <!--ACORDEÓN 3er ITEM-->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingThree">
                                <button class="accordion-button collapsed botones-acordeon" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                    Consultar productos
                                </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">

                                    <!--TABLA CONSULTAR TODOS LOS PRODUCTOS-->
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="crear-producto-columna-id">Consultar todos los productos</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <form action="/ControladorProductos" method="POST">      
                                                        <button type="submit" class="boton-consultar-productos" name="accion" value="Listar" style="background-color: cyan;">Consultar</button>
                                                    </form> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!--TABLA CONSULTAR TODOS LOS PRODUCTOS-->

                                </div>
                            </div>
                        </div>
                        <!--ACORDEÓN 3er ITEM-->

                        <!--ACORDEÓN 4o ITEM-->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingFour">
                                <button class="accordion-button collapsed botones-acordeon" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                    Eliminar productos
                                </button>
                            </h2>
                            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                    <!--TABLA ACTUALIZAR PIZZAS TRADICIONALES -->
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Eliminar producto por id</th>
                                            </tr>
                                        </thead>
                                        <tbody>  

                                            <tr>
                                                <td>
                                                    <form class="formulario-eliminar-productos" action="/ControladorProductos" method="POST"> 
                                                        <input type="text" class="form-control campo-eliminar-producto" name="idProductoEliminar">
                                                        <button type="submit" class="boton-eliminar-productos" name="accion" value="EliminarProductoPorId">Eliminar</button>
                                                    </form> 
                                                </td>
                                            </tr>



                                        </tbody>

                                    </table>

                                    <!--TABLA ACTUALIZAR PIZZAS TRADICIONALES -->


                                </div>
                            </div>
                        </div>
                        <!--ACORDEÓN 4o ITEM-->
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
