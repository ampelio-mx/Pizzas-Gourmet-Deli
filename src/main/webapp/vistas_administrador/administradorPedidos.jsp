
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Módulo Administración</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="../estilos_administrador/administrador_menu.css">
        <link rel="stylesheet" type="text/css" href="../estilos_administrador/administrador_pedidos.css">
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
                            <h2 class="accordion-header" id="flush-headingThree">
                                <button class="accordion-button collapsed botones-acordeon" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                    Consultar pedidos
                                </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">

                                    <!--TABLA CONSULTAR PEDIDO POR NOMBRE DE USUARIO-->
                                    <div class="table-responsive-md tabla-orden-pedido-datos-pedido">
                                        <table id="tabla-datos-pedido">

                                            <thead id="cabecero-tabla-cliente">
                                                <tr>
                                                    <th colspan="7" id="head-tabla-cliente">Consultar pedido por id del cliente (e mail)</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>
                                                        <form action="/ControladorPedidos" method="POST"> 
                                                            <label>Usuario:</label><input type="text" name="idCliente">
                                                            <button type="submit" class="boton-nombre-usuario" name="formulario-listaradio" value="ListarPedidoUser">Consultar</button>
                                                        </form> 
                                                    </td>
                                                </tr>
                                                
                                                 <tr>
                                                    <td class="tabla-cliente-body-col columna-listar-cliente"><span>Producto</span></td>
                                                    <td class="tabla-cliente-body-col columna-listar-cliente"><span>Cantidad</span></td>
                                                    <td class="tabla-cliente-body-col columna-listar-cliente"><span>Tamaño</span></td>
                                                    <td class="tabla-cliente-body-col columna-listar-cliente"><span>Forma entrega</span></td>
                                                    <td class="tabla-cliente-body-col columna-listar-cliente-domicilio"><span>Domicilio</span></td> 
                                                    <td class="tabla-cliente-body-col columna-listar-cliente"><span>Teléfono</span></td> 
                                                </tr> 

                                                <c:forEach items="${listaPedidos}" var="pedidoscliente">


                                                    <tr>
                                                        <td rowspan="1" class="tabla-cliente-body-col columna-listar-cliente">${pedidoscliente.nombreProductoPedidos}</td>
                                                        <td rowspan="1" class="tabla-cliente-body-col columna-listar-cliente">${pedidoscliente.cantidadPedidos}</td>
                                                        <td rowspan="1" class="tabla-cliente-body-col columna-listar-cliente">${pedidoscliente.tamanoPedidos}</td>
                                                        <td rowspan="1" class="tabla-cliente-body-col columna-listar-cliente">${pedidoscliente.formaEntrega}</td>
                                                        <td rowspan="1" class="tabla-cliente-body-col columna-listar-cliente-domicilio">${domiciliocliente.calle}*${domiciliocliente.numeroExterior}*${domiciliocliente.numeroInterior}*${domiciliocliente.colonia}*${domiciliocliente.codigoPostal}</td>
                                                        <td rowspan="1" class="tabla-cliente-body-col columna-listar-cliente">${domiciliocliente.telefono}</td>
                                                    </tr>

                                                </c:forEach>
                                                

                                            </tbody>


                                        </table>
                                    </div>
                                    <!--TABLA CONSULTAR PEDIDO POR NOMBRE DE USUARIO-->

                                    <!--TABLA CONSULTAR TODOS LOS PRODUCTOS-->
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="crear-producto-columna-id">Consultar todos los pedidos</th>                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <form action="/ControladorPedidos" method="POST" enctype="multipart/form-data">      
                                                        <button type="submit" class="boton-consultar-pedido" name="formulario-listaradio" value="ListarTodosPedidos">Consultar</button>
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

                        <!--ACORDEÓN 2o ITEM-->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingTwo">
                                <button class="accordion-button collapsed botones-acordeon" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                    Ingresar pedido
                                </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body cuerpo-acordeon">
                                   
                                    
                                    <!--TÍTULO TRADICIONALES CLÁSICAS-->
                                    <div class="tittle-formulario-radiobotones">
                                        <h2>Ordenar clásicas tradicionales</h2>
                                    </div>
                                    <!--TÍTULO TRADICIONALES CLÁSICAS-->
                                    <!--FORMULARIO RADIOBOTONES TRADICIONALES CLÁSICAS-->
                                    <form class="formulario-lista-radiobotones" action="/ControladorPedidos" method="POST">
                                        <input type="hidden" name="formulario-listaradio" value="formulariolistaradio1">
                                        <div class="conte-lista-seleccion">
                                            <label id="texto-opcion-lista" for="opciones">Selecciona el producto:</label>                                      
                                            <div class="conte-lista-pedidos">
                                                <select id="opciones" name="opcion_seleccionada_formulario">
                                                    <option class="opcion-selecionar" disabled selected>Seleccionar</option>
                                                    <option class="opcion-selecionar" value="1001">Pepperoni</option>
                                                    <option class="opcion-selecionar" value="1002">Honolulú</option>
                                                    <option class="opcion-selecionar" value="1003">Queso</option>
                                                </select>
                                            </div>                                        
                                        </div>
                                        <div class="conte-radio-boton">
                                            <label id="etiqueta-texto-opciones">Selecciona el tamaño:</label>

                                            <label class="etiqueta-radioboton" for="opcion_a"><input type="radio" class="radioboton" id="opcion_a" name="opcion_radioboton" value="mini">&nbsp;Mini</label>                                                                               
                                            <label class="etiqueta-radioboton" for="opcion_b"><input type="radio" class="radioboton" id="opcion_b" name="opcion_radioboton" value="individual">&nbsp;Individual</label>                                                                                
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" class="radioboton" id="opcion_c" name="opcion_radioboton" value="chica">&nbsp;Chica</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" class="radioboton" id="opcion_c" name="opcion_radioboton" value="mediana">&nbsp;Mediana</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" class="radioboton" id="opcion_c" name="opcion_radioboton" value="grande">&nbsp;Grande</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" class="radioboton" id="opcion_c" name="opcion_radioboton" value="familiar">&nbsp;Familiar</label>

                                        </div>
                                        <div class="campo-cantidad">
                                            <label id="etiqueta-texto-cantidad" for="opciones">Cantidad: </label>  
                                            <input type="text" class="campo-cantidad-productos" name="cantidadproductos">
                                        </div>
                                        <div class="conte-boton-pedidos">
                                            <input class="boton-enviar-formulario" type="submit" value="Enviar">
                                        </div>
                                    </form>
                                    <!--FORMULARIO RADIOBOTONES TRADICIONALES CLÁSICAS-->


                                    <!--TÍTULO GOURMET CLÁSICAS-->
                                    <div class="tittle-formulario-radiobotones">
                                        <h2>Ordenar clásicas gourmet</h2>
                                    </div>
                                    <!--TÍTULO GOURMET CLÁSICAS-->
                                    <!--FORMULARIO RADIOBOTONES GOURMET CLÁSICAS-->
                                    <form class="formulario-lista-radiobotones" action="/ControladorPedidos" method="POST">
                                        <div class="conte-lista-seleccion">
                                            <input type="hidden" name="formulario-listaradio" value="formulariolistaradio1">
                                            <label id="texto-opcion-lista" for="opciones">Selecciona el producto:</label>
                                            <div class="conte-lista-pedidos">
                                                <select id="opciones-gourmet" name="opcion_seleccionada_formulario">
                                                    <option class="opcion-selecionar" disabled selected>Seleccionar</option>
                                                    <option class="opcion-selecionar" value="2001">Pepperoni</option>
                                                    <option class="opcion-selecionar" value="2002">Honolulú</option>
                                                    <option class="opcion-selecionar" value="2003">Queso</option>
                                                </select>
                                            </div>                                        
                                        </div>
                                        <div class="conte-radio-boton">
                                            <label id="etiqueta-texto-opciones">Selecciona el tamaño:</label>                                     
                                            <label class="etiqueta-radioboton" for="opcion_a"><input type="radio" class="radioboton" id="opcion_a" name="opcion_radioboton" value="mini">Mini</label>                                                                               
                                            <label class="etiqueta-radioboton" for="opcion_b"><input type="radio" class="radioboton" id="opcion_b" name="opcion_radioboton" value="individual">Individual</label>                                                                                
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" class="radioboton" id="opcion_c" name="opcion_radioboton" value="chica">Chica</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" class="radioboton" id="opcion_c" name="opcion_radioboton" value="mediana">Mediana</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" class="radioboton" id="opcion_c" name="opcion_radioboton" value="grande">Grande</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" class="radioboton" id="opcion_c" name="opcion_radioboton" value="familiar">Familiar</label>
                                        </div>
                                        <div class="campo-cantidad">
                                            <label id="etiqueta-texto-cantidad" for="opciones">Cantidad: </label>  
                                            <input type="text" class="campo-cantidad-productos" name="cantidadproductos">
                                        </div>
                                        <div class="conte-boton-pedidos">
                                            <input class="boton-enviar-formulario-gourmet" type="submit" value="Enviar">
                                        </div>
                                    </form>
                                    <!--FORMULARIO RADIOBOTONES GOURMET CLÁSICAS-->

                                    <!--TÍTULO GOURMET ESPECIALES-->
                                    <div class="tittle-formulario-radiobotones">
                                        <h2>Ordenar especiales tradicionales</h2>
                                    </div>
                                    <!--TÍTULO GOURMET ESPECIALES-->
                                    <!--FORMULARIO RADIOBOTONES GOURMET ESPECIALES-->
                                    <form class="formulario-lista-radiobotones" action="/ControladorPedidos" method="POST">
                                        <input type="hidden" name="formulario-listaradio" value="formulariolistaradio1">
                                        <div class="conte-lista-seleccion">
                                            <label id="texto-opcion-lista" for="opciones">Selecciona el producto:</label>
                                            <div class="conte-lista-pedidos">
                                                <select id="opciones" name="opcion_seleccionada_formulario">
                                                    <option class="opcion-selecionar" disabled selected>Seleccionar</option>                                 
                                                    <option class="opcion-selecionar" value="1004">Champeroni</option>
                                                    <option class="opcion-selecionar" value="1005">Mexicana</option>
                                                    <option class="opcion-selecionar" value="1006">Yucateca</option>
                                                    <option class="opcion-selecionar" value="1007">Philadelphia</option>
                                                    <option class="opcion-selecionar" value="1008">Margarita</option>
                                                    <option class="opcion-selecionar" value="1009">Griega</option>
                                                    <option class="opcion-selecionar" value="1010">Hot Fuego</option>
                                                    <option class="opcion-selecionar" value="1011">Argenta</option>
                                                    <option class="opcion-selecionar" value="1012">Higo</option>
                                                    <option class="opcion-selecionar" value="1013">Pera Roquefort</option>
                                                    <option class="opcion-selecionar" value="1014">Seis Quesos</option>
                                                    <option class="opcion-selecionar" value="1015">Napolitana</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="conte-radio-boton">
                                            <label id="etiqueta-texto-opciones">Selecciona el tamaño:</label>

                                            <label class="etiqueta-radioboton" for="opcion_a"><input type="radio" id="opcion_a" name="opcion_radioboton" value="mini">Mini</label>                                                                               
                                            <label class="etiqueta-radioboton" for="opcion_b"><input type="radio" id="opcion_b" name="opcion_radioboton" value="individual">Individual</label>                                                                                
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" id="opcion_c" name="opcion_radioboton" value="chica">Chica</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" id="opcion_c" name="opcion_radioboton" value="mediana">Mediana</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" id="opcion_c" name="opcion_radioboton" value="grande">Grande</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" id="opcion_c" name="opcion_radioboton" value="familiar">Familiar</label>
                                        </div>
                                        <div class="campo-cantidad">
                                            <label id="etiqueta-texto-cantidad" for="opciones">Cantidad: </label>  
                                            <input type="text" class="campo-cantidad-productos" name="cantidadproductos">
                                        </div>
                                        <div class="conte-boton-pedidos">
                                            <input class="boton-enviar-formulario" type="submit" value="Enviar">
                                        </div>
                                    </form>
                                    <!--FORMULARIO RADIOBOTONES GOURMET ESPECIALES-->



                                    <!--TÍTULO TRADICIONALES ESPECIALES-->
                                    <div class="tittle-formulario-radiobotones">
                                        <h2>Ordenar especiales gourmet</h2>
                                    </div>
                                    <!--TÍTULO TRADICIONALES ESPECIALES-->
                                    <!--FORMULARIO RADIOBOTONES TRADICIONALES ESPECIALES-->
                                    <form class="formulario-lista-radiobotones" action="/ControladorPedidos" method="POST">
                                        <input type="hidden" name="formulario-listaradio" value="formulariolistaradio1">
                                        <div class="conte-lista-seleccion">
                                            <label id="texto-opcion-lista" for="opciones">Selecciona el producto:</label>
                                            <div class="conte-lista-pedidos">
                                                <select id="opciones-gourmet" name="opcion_seleccionada_formulario">
                                                    <option class="opcion-selecionar" disabled selected>Seleccionar</option>
                                                    <option class="opcion-selecionar" value="2004">Champeroni</option>
                                                    <option class="opcion-selecionar" value="2005">Mexicana</option>
                                                    <option class="opcion-selecionar" value="2006">Yucateca</option>
                                                    <option class="opcion-selecionar" value="2007">Philadelphia</option>
                                                    <option class="opcion-selecionar" value="2008">Margarita</option>
                                                    <option class="opcion-selecionar" value="2009">Griega</option>
                                                    <option class="opcion-selecionar" value="2010">Hot Fuego</option>
                                                    <option class="opcion-selecionar" value="2011">Argenta</option>
                                                    <option class="opcion-selecionar" value="2012">Higo</option>
                                                    <option class="opcion-selecionar" value="2013">Pera Roquefort</option>
                                                    <option class="opcion-selecionar" value="2014">Seis Quesos</option>
                                                    <option class="opcion-selecionar" value="2015">Napolitana</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="conte-radio-boton">
                                            <label id="etiqueta-texto-opciones">Selecciona el tamaño:</label>

                                            <label class="etiqueta-radioboton" for="opcion_a"><input type="radio" id="opcion_a" name="opcion_radioboton" value="mini">Mini</label>                                                                               
                                            <label class="etiqueta-radioboton" for="opcion_b"><input type="radio" id="opcion_b" name="opcion_radioboton" value="individual">Individual</label>                                                                                
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" id="opcion_c" name="opcion_radioboton" value="chica">Chica</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" id="opcion_c" name="opcion_radioboton" value="mediana">Mediana</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" id="opcion_c" name="opcion_radioboton" value="grande">Grande</label>
                                            <label class="etiqueta-radioboton" for="opcion_c"><input type="radio" id="opcion_c" name="opcion_radioboton" value="familiar">Familiar</label>
                                        </div>
                                        <div class="campo-cantidad">
                                            <label id="etiqueta-texto-cantidad" for="opciones">Cantidad: </label>  
                                            <input type="text" class="campo-cantidad-productos" name="cantidadproductos">
                                        </div>
                                        <div class="conte-boton-pedidos">
                                            <input class="boton-enviar-formulario-gourmet" type="submit" value="Enviar">
                                        </div>  
                                    </form>
                                    <!--FORMULARIO RADIOBOTONES TRADICIONALES ESPECIALES-->

                                    <!--TÍTULO EXTRAS-ANTOJITOS-->
                                    <div class="tittle-formulario-radiobotones">
                                        <h2>Ordenar bebidas</h2>
                                    </div>
                                    <!--TÍTULO EXTRAS-ANTOJITOS-->
                                    <!--FORMULARIO RADIOBOTONES EXTRAS-ANTOJITOS-->
                                    <form class="formulario-lista-radiobotones" action="/ControladorPedidos" method="POST">
                                        <input type="hidden" name="formulario-listaradio" value="formulariolistaradio1">
                                        <div class="conte-lista-seleccion">
                                            <label id="texto-opcion-lista" for="opciones">Selecciona el producto:</label>
                                            <div class="conte-lista-pedidos">
                                                <select id="opciones" name="opcion_seleccionada_formulario">
                                                    <option class="opcion-selecionar" disabled selected>Seleccionar</option>                                                  
                                                    <option class="opcion-selecionar" value="3001">Refresco 355 ml</option>
                                                    <option class="opcion-selecionar" value="3002">Vaso de horachata 250 ml</option>
                                                    <option class="opcion-selecionar" value="3003">Jarra de horachata 1 lt</option>
                                                    <option class="opcion-selecionar" value="3004">Agua embotellada 500 ml</option>
                                                    <option class="opcion-selecionar" value="3005">Café americano 290 ml</option>
                                                    <option class="opcion-selecionar" value="3006">Café capuchino 290 ml</option>
                                                    <option class="opcion-selecionar" value="3007"">Café expreso doble 290 ml</option>
                                                    <option class="opcion-selecionar" value="3008">Té 290 ml</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="conte-radio-boton">
                                        </div>
                                        <div class="campo-cantidad">
                                            <label id="etiqueta-texto-cantidad" for="opciones">Cantidad: </label>  
                                            <input type="text" class="campo-cantidad-productos" name="cantidadproductos">
                                        </div>
                                        <div class="conte-boton-pedidos">
                                            <input class="boton-enviar-formulario" type="submit" value="Enviar">
                                        </div>
                                    </form>
                                    <!--FORMULARIO RADIOBOTONES GOURMET ESPECIALES-->
                                    
                                    <!--TÍTULO EXTRAS-ANTOJITOS-->
                                    <div class="tittle-formulario-radiobotones">
                                        <h2>Ordenar antojitos</h2>
                                    </div>
                                    <!--TÍTULO EXTRAS-ANTOJITOS-->
                                    <!--FORMULARIO RADIOBOTONES EXTRAS-ANTOJITOS-->
                                    <form class="formulario-lista-radiobotones" action="/ControladorPedidos" method="POST">
                                        <input type="hidden" name="formulario-listaradio" value="formulariolistaradio1">
                                        <div class="conte-lista-seleccion">
                                            <label id="texto-opcion-lista" for="opciones">Selecciona el producto:</label>
                                            <div class="conte-lista-pedidos">
                                                <select id="opciones" name="opcion_seleccionada_formulario">
                                                    <option class="opcion-selecionar" disabled selected>Seleccionar</option>                                                  
                                                    <option class="opcion-selecionar" value="5001">Papa al horno</option>
                                                    <option class="opcion-selecionar" value="5002">Chayote al horno</option>
                                                    <option class="opcion-selecionar" value="5003">Chiken bake</option>
                                                    <option class="opcion-selecionar" value="5004">Nachos con arrachera</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="conte-radio-boton">
                                        </div>
                                        <div class="campo-cantidad">
                                            <label id="etiqueta-texto-cantidad" for="opciones">Cantidad: </label>  
                                            <input type="text" class="campo-cantidad-productos" name="cantidadproductos">
                                        </div>
                                        <div class="conte-boton-pedidos">
                                            <input class="boton-enviar-formulario" type="submit" value="Enviar">
                                        </div>
                                    </form>
                                    <!--FORMULARIO RADIOBOTONES GOURMET ESPECIALES-->


                                    
                                    
                                    
                                </div>
                            </div>
                        </div>
                        <!--ACORDEÓN 2o ITEM-->

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
