<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Productos Añadidos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_orden_pedido.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>  

    </head>
    <body>

        <jsp:include page="../vistas_comunes/menu_principal_logo.jsp"/>

        <div class="container-fluid contenedor-tablas-pedido p-0">
            <div class="row fila-tablas-pedido p-0 m-0">
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-9 col-xl-9 columna-tablas-pedido p-0">


                    <div class="container-fluid contenedor-tittle-pedido">
                        <div class="row fila-tittle-pedido">
                            <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-tittle-pedido m-0 p-0">
                                <div class="conte-tittle-pedido">
                                    <h2>ENVIAR PEDIDO</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid contenedor-datos-cliente">
                        <div class="row fila-datos-cliente">
                            <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-datos-cliente">

                                <div class="table-responsive-md tabla-orden-pedido-datos-cliente">
                                    <table id="tabla-datos-cliente">
                                        <thead id="cabecero-tabla-cliente">
                                            <tr>
                                                <th id="head-tabla-cliente" colspan="8">DATOS DEL CLIENTE</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="tabla-cliente-body-col">Nombre</td>
                                                 <td class="tabla-cliente-body-col">Nombre</td>
                                                <td class="tabla-cliente-body-col">Calle</td>   
                                                <td class="tabla-cliente-body-col">No ext.</td>  
                                                <td class="tabla-cliente-body-col">No int.</td>
                                                <td class="tabla-cliente-body-col">Colonia</td>  
                                                <td class="tabla-cliente-body-col">Delegación</td> 
                                                <td class="tabla-cliente-body-col">Código Postal</td>                             
                                                <td class="tabla-cliente-body-col">Fecha y hora</td>
                                            </tr>
                                            <tr>

                                                <% Date fechahora = new Date();
                                                    SimpleDateFormat formatoFechaHora = new SimpleDateFormat("HH:mm dd-MM-yyyy");
                                                    String fechaHoraFormato = formatoFechaHora.format(fechahora);
                                                %>

                                                <td id="nombre-cliente-compra" class="tabla-cliente-body-col">${datoscliente.nombre}</td>
                                                <td class="tabla-cliente-body-col">${datoscliente.calle}</td>
                                                <td class="tabla-cliente-body-col">${datoscliente.numeroExterior}</td>
                                                <td class="tabla-cliente-body-col">${datoscliente.numeroInterior}</td>
                                                <td class="tabla-cliente-body-col">${datoscliente.colonia}</td>
                                                <td class="tabla-cliente-body-col">${datoscliente.delegacion}</td>
                                                <td class="tabla-cliente-body-col">${datoscliente.codigoPostal}</td>
                                                <<td class="tabla-cliente-body-col-fecha"><%=fechaHoraFormato%> </td>

                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="container-fluid contenedor-datos-orden">
                        <div class="row fila-datos-orden">
                            <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-datos-orden">

                                <div class="table-responsive-md tabla-orden-pedido-datos-pedido">
                                    <table id="tabla-datos-pedido">

                                        <thead id="cabecero-tabla-cliente">
                                            <tr>
                                                <th colspan="7" id="head-tabla-cliente">ORDEN</th>
                                            </tr>
                                        </thead>
                                        <tbody>



                                            <tr>
                                                <td> </td>
                                                <td class="tabla-cliente-body-col"><span>Nombre del producto</span></td>
                                                <td class="tabla-cliente-body-col"><span>Cantidad</span></td>
                                                <td class="tabla-cliente-body-col"><span>Tamaño</span></td>
                                                <td class="tabla-cliente-body-col"><span>Precio</span></td>
                                                <td class="tabla-cliente-body-col"><span>Subtotal</span></td>                        
                                            </tr> 

                                            <c:forEach items="${datospedido}" var="datosorden">


                                                <tr>
                                                    <td class="nombreproducto"></td>
                                                    <td rowspan="1" class="tabla-cliente-body-col">${datosorden.nombreProductoPedidos}</td>
                                                    <td rowspan="1" class="tabla-cliente-body-col">${datosorden.cantidadPedidos}</td>
                                                    <td rowspan="1" class="tabla-cliente-body-col">${datosorden.tamanoPedidos}</td>
                                                    <td rowspan="1" class="tabla-cliente-body-col">$ ${datosorden.costoIndividual}</td>
                                                    <td rowspan="1" class="tabla-cliente-body-col">$ ${datosorden.importePedidos}</td>
                                                </tr>

                                            </c:forEach>
                                        </tbody>


                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>







                </div>


                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-3 col-xl-3 columna-link-codigo-qr p-0 m-0">
                    <div class="container-fluid contenedor-enlace-qr p-0 m-0">
                        <div class="row fila-enlace-qr p-0 m-0">

                            <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-enlace-qr p-0 m-0">
                                <div class="importe-total-pagar">
                                    <div class="total-text-conte">
                                        <p id="total-text">TOTAL A PAGAR</p>
                                    </div>
                                    <div class="importe-conte">
                                        <h2>$</h2>
                                        <h2 id="importe-pagar">${total}</h2>
                                    </div>
                                </div>

                                <div id="conte-boton-envio">  
                                    <div id="conte-boton-pago-clip"> 
                                        <button id="boton-pago-clip" onClick="solicitarPago()"></button>
                                    </div>                                    
                                    <form class="formulario-boton-mostrador" action="/ControladorGuardarPedidoEfectivoTerminal" method="POST">
                                        <button type="submit" class="boton-guardar-pedido-efectivo" name="accion" value="pagomostrador" onClick="mensajeConfirmarPedido();">Efectivo o terminal</button>
                                    </form> 
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

        <script src="../scripts_javascript/apiclip.js"></script>

    </body>
</html>
