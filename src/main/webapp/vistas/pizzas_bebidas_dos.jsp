

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Bebidas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_bebidas.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>  
    </head>

    <body>


        <jsp:include page="../vistas_comunes/menu_principal.jsp"/>
        <jsp:include page="../vistas_comunes/whatsapp_icon.jsp"/>

        <div id="contenedor-spinner-pizzas">
            <div id="pizza-loading-indicator">
                <div class="spinner"></div>
                <p>Cargando antojitos...</p>
            </div>
        </div>

        <!--FONDO DE CARDS IMAGENES PIZZAS--> <!--FONDO DE CARDS IMAGENES PIZZAS--> <!--FONDO DE CARDS IMAGENES PIZZAS--> 
        <div class="fondo-de-tarjetas-blanco"></div>
        <!--FONDO DE CARDS IMAGENES PIZZAS--> <!--FONDO DE CARDS IMAGENES PIZZAS--> <!--FONDO DE CARDS IMAGENES PIZZAS--> 


        <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR -->
        <div class="container-fluid contenedor-de-cards p-0">
            <div class="row m-0 p-0">
                <div class="columna-contenedor-cards col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">


                    <!--TITULO PIZZAS--> <!--TITULO PIZZAS--> <!--TITULO PIZZAS--> <!--TITULO PIZZAS--> <!--TITULO PIZZAS-->

                    <div class="container-fluid contenedor-cards-tittle m-0 p-0">
                        <div class="row">
                            <div class="columna-contenedor-de-titulo-tarjetas col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 p-0 m-0">
                                <h2>
                                    <span class="span-titulo-cards">BEBIDAS</span>                                   
                                </h2>                    
                            </div>
                        </div>
                    </div>
                    <!--TITULO PIZZAS--> <!--TITULO PIZZAS--> <!--TITULO PIZZAS--> <!--TITULO PIZZAS--> <!--TITULO PIZZAS-->

                    <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> 

                    <div class="container-fluid contenedor-cards-cuatro-cards m-0 p-0">
                        <div class="row fila-contenedor-cards-cuatro-cards flex-nowrap overflow-auto">

                            <!-- card pizza dinámica--> <!-- card pizza dinámica--> <!-- card pizza dinámica--> <!-- card pizza dinámica--> <!-- card pizza dinámica-->  
                            <c:forEach var="var" items="${listapizzas}">                                        
                                <div class="columna-contenedor-de-tarjetas col-12 col-xs-12 col-sm-12 col-md-12 col-lg-3 col-xl-3 p-0 m-0">
                                    <div class="columna-nombre-de-cada-pizza">
                                        <h2 id="nombre-pizza-titulo">${var.nombreProducto}</h2>
                                    </div>
                                    <div class="columna-descripcion-de-cada-pizza">
                                        <p>${var.descripcionProducto}</p>
                                    </div>
                                    <div class="contenedor-de-cada-tarjeta">
                                        <div class="sub-contenedor-de-cada-tarjeta">
                                            <div class="contenedor-de-imagen-para-card">
                                                <img src="/pizzasgourmetdelicopia/ControladorProductosImagen?id=${var.idProducto}">
                                            </div>
                                            <div class="contenedor-de-opciones-tarjeta">

                                                <div class="contenedor-de-precio-tarjeta">
                                                    <div class="contenedor-de-precio-tarjeta-label-uno">
                                                        <p class="contenedor-de-precio-tarjeta-label-uno-p">Precio</p>
                                                    </div>



                                                    <div class="contenedor-de-precio-tarjeta-label-dos">  
                                                        <label id="etiquetaSignoPesos">$</label>
                                                        <label id="labelParametros_${var.idProducto}" class="label-precio-pizza">${var.precioBebidas}</label>
                                                    </div>
                                                </div>
                                                <div class="contenedor-de-cantidad-tarjeta">
                                                    <div class="contenedor-de-cantidad-tarjeta-label">
                                                        <p class="contenedor-de-cantidad-tarjeta-label-p">Cantidad</p>
                                                    </div>
                                                    <div class="contenedor-de-cantidad-tarjeta-control-uno">
                                                        <!--<p class="contenedor-de-cantidad-tarjeta-control-uno-p-2">1</p>-->
                                                        <button id="boton-disminuir_${var.idProducto}" class="boton-disminuir" onclick="restarCantidadSelect(this)"><span>-</span></button>

                                                    </div>
                                                    <div class="contenedor-de-cantidad-tarjeta-control-dos">
                                                        <!--<input type="label" id="cantPizzasPeppTra" value="1" class="contenedor-de-cantidad-tarjeta-control-dos-p-2"-->
                                                        <label id="cant-Pizzas_${var.idProducto}" class="contenedor-de-cantidad-tarjeta-control-dos-p"> 1 </label>
                                                        <!-- <p id="cantPizzas" class="contenedor-de-cantidad-tarjeta-control-dos-p-2">3</p> -->
                                                    </div>
                                                    <div class="contenedor-de-cantidad-tarjeta-control-tres">
                                                        <!-- <p class="contenedor-de-cantidad-tarjeta-control-tres-p-2" onClick="aumentarCantidad()">3</p> -->
                                                        <button id="boton-aumentar_${var.idProducto}" class="boton-aumentar" onclick="sumarCantidadSelect(this)"><span>+</span></button>
                                                    </div>
                                                </div>
                                                <div class="contenedor-de-ordenar-tarjeta">
                                                    <div class="contenedor-de-ordenar-tarjeta-label-uno">
                                                        <button id="boton-agregar-pizza_${var.idProducto}" class="boton-agregar-pizza" type="submit" name="botonform" onclick="enviarPedido(this)"><span>Agregar</span></button>
                                                    </div>                                               
                                                </div>
                                            </div>

                                            <div class="values-hidden">
                                                <label id="idvalue_${var.idProducto}">${var.idProducto}</label>
                                                <label id="idname_${var.idProducto}">${var.nombreProducto}</label>
                                                <label id="idprice_${var.idProducto}">${var.precioBebidas}</label>
                                            </div>

                                        </div>
                                    </div> 
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                    <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> 
                    
                    <div class="container-fluid contenedor-paginador m-0 p-0">
                        <div class="row m-0 p-0">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 column-paginador m-0 p-0">
                                <nav aria-label="Page navigation example" class="conte-nav-paginacion">
                                    <ul class="pagination unorderlist-paginacion">
                                        <li class="page-item listitem-paginacion"><a class="page-link" href="/pizzasgourmetdelicopia/ControladorProductos?accion=bebidasuno">1</a></li>
                                        <li class="page-item listitem-paginacion"><a class="page-link" href="/pizzasgourmetdelicopia/ControladorProductos?accion=bebidasdos">2</a></li>                                        
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>





                </div>
            </div>
        </div>



        <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR -->

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="../scripts_javascript/pizzas.js"></script>


        <script>



                                                            var idProduct3005 = document.getElementById("idvalue_3005");
                                                            var idProductText3005 = idProduct3005.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText3005);
                                                            var idProduct3006 = document.getElementById("idvalue_3006");
                                                            var idProductText3006 = idProduct3006.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText3006);
                                                            var idProduct3007 = document.getElementById("idvalue_3007");
                                                            var idProductText3007 = idProduct3007.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText3007);
                                                            var idProduct3008 = document.getElementById("idvalue_3008");
                                                            var idProductText3008 = idProduct3008.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText3008);

                                                            var nameProduct3005 = document.getElementById("idname_3005");
                                                            var nameProductText3005 = nameProduct3005.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText3005);
                                                            var nameProduct3006 = document.getElementById("idname_3006");
                                                            var nameProductText3006 = nameProduct3006.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText3006);
                                                            var nameProduct3007 = document.getElementById("idname_3007");
                                                            var nameProductText3007 = nameProduct3007.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText3007);
                                                            var nameProduct3008 = document.getElementById("idname_3008");
                                                            var nameProductText3008 = nameProduct3008.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText3008);

                                                            var priceProduct3005 = document.getElementById("idprice_3005");
                                                            var priceProductText3005 = priceProduct3005.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText3005);
                                                            var priceProduct3006 = document.getElementById("idprice_3006");
                                                            var priceProductText3006 = priceProduct3006.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText3006);
                                                            var priceProduct3007 = document.getElementById("idprice_3007");
                                                            var priceProductText3007 = priceProduct3007.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText3007);
                                                            var priceProduct3008 = document.getElementById("idprice_3008");
                                                            var priceProductText3008 = priceProduct3008.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText3008);

                                                            //función para restar cantidad
                                                            var concatenaprecioactualredondeado = 0;
                                                            function restarCantidadSelect(disminuir) {
                                                                var btnDismunuir = disminuir.id;
                                                                console.log("botón disminuir seleccionado: " + btnDismunuir);

                                                                if (btnDismunuir === "boton-disminuir_3005") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3005");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_3005');
                                                                    var concatenaprecioactual = priceProductText3005 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;

                                                                } else if (btnDismunuir === "boton-disminuir_3006") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3006");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_3006');
                                                                    var concatenaprecioactual = priceProductText3006 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnDismunuir === "boton-disminuir_3007") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3007");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_3007');
                                                                    var concatenaprecioactual = priceProductText3007 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnDismunuir === "boton-disminuir_3008") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3008");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_3008');
                                                                    var concatenaprecioactual = priceProductText3008 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                }

                                                            }

                                                            function sumarCantidadSelect(aumentar) {
                                                                var btnAumentar = aumentar.id;
                                                                console.log(btnAumentar);

                                                                if (btnAumentar === "boton-aumentar_3005") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3005");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_3005');
                                                                    var concatenaprecioactual = priceProductText3005 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_3006") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3006");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_3006');
                                                                    var concatenaprecioactual = priceProductText3006 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_3007") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3007");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_3007');
                                                                    var concatenaprecioactual = priceProductText3007 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_3008") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3008");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_3008');
                                                                    var concatenaprecioactual = priceProductText3008 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                }
                                                            }

                                                            function getValues(param) {

                                                                var paramValue = param.id;
                                                                console.log("El valor del parámetro es: " + paramValue);
                                                            }
                                                            //funcion enviar pedido

                                                            function enviarPedido(agregarproducto) {

                                                                var idPizza = "";
                                                                var precioProducto = 0;
                                                                var nombreProducto = "";
                                                                var tamanioProducto = "";
                                                                var cantidadselected = "";
                                                                var productoAgregado = agregarproducto.id;
                                                                console.log(productoAgregado);

                                                                if (productoAgregado === "boton-agregar-pizza_3005") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_3005").innerText;
                                                                    idPizza = idProductText3005;
                                                                    nombreProducto = nameProductText3005;
                                                                    precioProducto = priceProductText3005;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_3006") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_3006").innerText;
                                                                    idPizza = idProductText3006;
                                                                    nombreProducto = nameProductText3006;
                                                                    precioProducto = priceProductText3006;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_3007") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_3007").innerText;
                                                                    idPizza = idProductText3007;
                                                                    nombreProducto = nameProductText3007;
                                                                    precioProducto = priceProductText3007;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_3008") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_3008").innerText;
                                                                    idPizza = idProductText3008;
                                                                    nombreProducto = nameProductText3008;
                                                                    precioProducto = priceProductText3008;
                                                                    console.log(cantidadselected);
                                                                }

                                                                var tamanioProducto = "";
                                                                var subtotal = concatenaprecioactualredondeado;
                                                                console.log("Subtotal" + subtotal);
                                                                var accionPizzas = "accionPizzas";

                                                                var urlServlet = "/pizzasgourmetdelicopia/ControladorPedidos?accion=" + encodeURIComponent(accionPizzas) + "&idpizza=" + encodeURIComponent(idPizza) + "&nombrepizza=" + encodeURIComponent(nombreProducto) + "&cantidadpizzas=" + encodeURIComponent(cantidadselected) + "&tamaniopizza=" + encodeURIComponent(tamanioProducto) + "&precioindividual=" + encodeURIComponent(precioProducto) + "&subtotal=" + encodeURIComponent(subtotal);
                                                                window.location.href = urlServlet;
                                                            }


        </script>



    </body>
</html>
