<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos Añadidos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_carrito.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>  
    </head>
    <body>

        <jsp:include page="../vistas_comunes/menu_principal_logo.jsp"/>

        <div class="container-fluid contenedor-tabla-pedido p-0">
            <div class="row fila-tabla-pedido">
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-tabla-pedido">

                    <div class="table-responsive-md tabla-carrito">
                        <table class="tabla-pedido">
                            <thead>
                                <tr id="id-titulo-menu">
                                    <th colspan="5" class="titulo-menu">CONFIRMAR PEDIDO</th>
                                </tr>
                            </thead>

                            <tbody>


                                <tr>
                                    <td class="menu-medidas">Nombre Producto</td>
                                    <td class="menu-medidas"><span>Cantidad</span></td>
                                    <td class="menu-medidas"><span>Tamaño</span></td>
                                    <td class="menu-medidas"><span>Precio individual</span></td>
                                    <td class="menu-medidas"><span>Sub Total</span></td>
                                    <td class="menu-medidas"><span></span></td>
                                    <td class="menu-medidas"><span></span></td>
                                </tr> 

                                <c:forEach items="${listaProductosPedidos}" var="lista">

                                    <tr>
                                        <td rowspan="1" class="precio-producto-menu">${lista.nombreProductoPedidos}</td>
                                        <td rowspan="1" class="precio-producto-menu">${lista.cantidadPedidos}</td>
                                        <td rowspan="1" class="precio-producto-menu">${lista.tamanoPedidos}</td>
                                        <td rowspan="1" class="precio-producto-menu">$ ${lista.costoIndividual}</td>                                    
                                        <td rowspan="1" class="precio-producto-menu">$ ${lista.importePedidos}</td>
                                        <td rowspan="1" id="id-producto-menu">${lista.idPedidos}</td>
                                        <td><a href="/ControladorPedidos?accion=accioneliminarpedido&idpedido=${lista.idPedidos}" class="link-menu-item">elimiar</a></td>
                                    </tr>


                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="contenedor-botones">

                        <div class="conte-boton-carrito">
                            <form action="/ControladorClientes" method="POST">
                                <button class="boton-carrito" type="submit" name="accion" value="carritoregresar">Regresar</button>
                            </form>
                        </div>    

                        <div class="conte-boton-carrito">
                            <form action="/ControladorClientes" method="POST">
                                <button class="boton-carrito" type="submit" name="accion" value="carritoiniciarsesion">Continuar</button>
                            </form>
                        </div>

                    </div>     
                </div>
            </div>
        </div>   


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>




    </body>
</html>
