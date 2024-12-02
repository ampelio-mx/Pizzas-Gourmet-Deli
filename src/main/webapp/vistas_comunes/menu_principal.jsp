
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_menu.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>   
        <script defer type="text/javascript" src="../scripts_javascript/scripts.js"></script>

        <script type="text/javascript">

<!-- función para obtener ruta y regresar al home-->
            function regresarPaginaInicio() {

                var obtenerRuta = "${pageContext.request.contextPath}";
                console.log(obtenerRuta);
                window.location.href = obtenerRuta + "/ControladorProductosListar";
            }
        </script>


    </head>
    <body>

        <div class="contenedor-navegador container-fluid p-0">
            <div class="row-navegador row m-0 p-0">

                <!--LOGO EMPRESA -->
                <div class="columna-logo col-12 col-xs-12 col-sm-12 col-md-12 col-lg-3 col-xl-3 p-0 m-0">
                    <div class="pizza-icon">
                        <p class="parrafo-pizza">P</p>    
                    </div>
                    <div class="div-logo-nav">
                        <a href="javascript:void(0);" onclick="regresarPaginaInicio()" class="p1">PIZZAS GOURMET</a>
                        <p>¡Menos masa, más sabor!</p>
                    </div>

                    <button class="toogle"><i class="fa-solid fa-bars"> </i></button>

                </div>

                <!--COLUMNA CON CONTENEDOR DE MENUS -->

                <div class="columna-todos-items-nav col-12 col-sm-12 col-md-12 col-lg-9 m-0 p-0">


                    <!--COLUMNA CON LOS 6 ITEMS DELMENÚ -->     
                    <div class="columna-navegador-seisitems2 ">
                        <div class="container-fluid p-0">
                            <div class="row m-0 p-0">
                                <!--COLUMNA CON LOS 7 ITEMS DEL MENÚ -->  

                                <div class="columna-items-menu contenedor-menu-vacio col-12 col-sm-12 col-md-12 col-lg-2  p-0">

                                </div>

                                <div class="columna-items-menu contenedor-menu-pizzas col-12 col-sm-12 col-md-12 col-lg-2 p-0">
                                    <div class="div-texto-menu">
                                        <ul class="lista-padre">
                                            <li class=" lista-hijo"><a href="#" class="link-menu-item">Menú</a>
                                                <ul class="lista-submenu-pizza">
                                                    <li><a href="/ControladorProductos?accion=pizzastrauno">Pizzas Tradicionales</a></li>
                                                    <li><a href="/ControladorProductos?accion=pizzasgouruno">Pizzas Gourmet</a></li>
                                                    <li><a href="/ControladorProductos?accion=antojitos">Antojitos</a></li>
                                                    <li><a href="/ControladorProductos?accion=bebidasuno">Bebidas</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <!--<div class="div-imagen-menu">                                      
                                    </div>-->
                                </div>

                                <div class="columna-items-menu col-12 col-sm-12 col-md-12 col-lg-2  p-0">
                                    <div class="div-texto-menu">
                                        <ul class="lista-padre">
                                            <li class=" lista-hijo"><a href="/vistas/quienesSomos.jsp" class="link-menu-item">¿Quiénes somos?</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!--<div class="div-imagen-menu">                                      
                                    </div>-->
                                </div>

                                <div class="columna-items-menu col-12 col-sm-12 col-md-12 col-lg-2  p-0">
                                    <div class="div-texto-menu">
                                        <ul class="lista-padre">
                                            <li class=" lista-hijo"><a href="/vistas/promociones.jsp" class="link-menu-item">Promociones</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!--<div class="div-imagen-menu">                                      
                                    </div>-->
                                </div>

                                <div class="columna-items-menu col-12 col-sm-12 col-md-12 col-lg-2  p-0">
                                    <div class="div-texto-menu">
                                        <ul class="lista-padre">
                                            <li class=" lista-hijo"><a href="/vistas/ubicaciones.jsp" class="link-menu-item">Ubicaciones</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!--<div class="div-imagen-menu">                                      
                                    </div>-->
                                </div>
                                <%
                                     Integer cantidadProductos = (Integer) session.getAttribute("cantProduct");
                                     if(cantidadProductos == null){
                                         cantidadProductos = 0;
                                     }
                                %>
                                <div class="columna-items-menu contenedor-menu-carrito col-12 col-sm-12 col-md-12 col-lg-2  p-0">
                                    <div class="div-texto-menu">
                                        <ul class="lista-padre">
                                                <li class=" lista-hijo icono-carrito"><a href="/ControladorPedidos?accion=accionmenu" class="link-menu-item"><i class="fa-solid fa-cart-shopping" style="font-size: 24px"></i><span><%= cantidadProductos%></span></a>
                                            </li>                                            
                                        </ul>
                                    </div>
                                </div>
                               

                            </div>
                        </div>
                    </div>   


                </div>

            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


    </body>
</html>
