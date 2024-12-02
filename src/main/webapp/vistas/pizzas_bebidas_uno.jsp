

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
                                                <img src="/ControladorProductosImagen?id=${var.idProducto}">
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
                                        <li class="page-item listitem-paginacion"><a class="page-link" href="/ControladorProductos?accion=bebidasuno">1</a></li>
                                        <li class="page-item listitem-paginacion"><a class="page-link" href="/ControladorProductos?accion=bebidasdos">2</a></li>                                        
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



                                                            var idProduct3001 = document.getElementById("idvalue_3001");
                                                            var idProductText3001 = idProduct3001.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText3001);
                                                            var idProduct3002 = document.getElementById("idvalue_3002");
                                                            var idProductText3002 = idProduct3002.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText3002);
                                                            var idProduct3003 = document.getElementById("idvalue_3003");
                                                            var idProductText3003 = idProduct3003.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText3003);
                                                            var idProduct3004 = document.getElementById("idvalue_3004");
                                                            var idProductText3004 = idProduct3004.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText3004);

                                                            var nameProduct3001 = document.getElementById("idname_3001");
                                                            var nameProductText3001 = nameProduct3001.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText3001);
                                                            var nameProduct3002 = document.getElementById("idname_3002");
                                                            var nameProductText3002 = nameProduct3002.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText3002);
                                                            var nameProduct3003 = document.getElementById("idname_3003");
                                                            var nameProductText3003 = nameProduct3003.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText3003);
                                                            var nameProduct3004 = document.getElementById("idname_3004");
                                                            var nameProductText3004 = nameProduct3004.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText3004);

                                                            var priceProduct3001 = document.getElementById("idprice_3001");
                                                            var priceProductText3001 = priceProduct3001.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText3001);
                                                            var priceProduct3002 = document.getElementById("idprice_3002");
                                                            var priceProductText3002 = priceProduct3002.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText3002);
                                                            var priceProduct3003 = document.getElementById("idprice_3003");
                                                            var priceProductText3003 = priceProduct3003.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText3003);
                                                            var priceProduct3004 = document.getElementById("idprice_3004");
                                                            var priceProductText3004 = priceProduct3004.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText3004);

                                                            //función para restar cantidad
                                                            var concatenaprecioactualredondeado = 0;
                                                            function restarCantidadSelect(disminuir) {
                                                                var btnDismunuir = disminuir.id;
                                                                console.log("botón disminuir seleccionado: " + btnDismunuir);

                                                                if (btnDismunuir === "boton-disminuir_3001") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3001");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_3001');
                                                                    var concatenaprecioactual = priceProductText3001 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;

                                                                } else if (btnDismunuir === "boton-disminuir_3002") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3002");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_3002');
                                                                    var concatenaprecioactual = priceProductText3002 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnDismunuir === "boton-disminuir_3003") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3003");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_3003');
                                                                    var concatenaprecioactual = priceProductText3003 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnDismunuir === "boton-disminuir_3004") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3004");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_3004');
                                                                    var concatenaprecioactual = priceProductText3003 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                }

                                                            }

                                                            function sumarCantidadSelect(aumentar) {
                                                                var btnAumentar = aumentar.id;
                                                                console.log(btnAumentar);

                                                                if (btnAumentar === "boton-aumentar_3001") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3001");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_3001');
                                                                    var concatenaprecioactual = priceProductText3001 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_3002") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3002");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_3002');
                                                                    var concatenaprecioactual = priceProductText3002 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_3003") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3003");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_3003');
                                                                    var concatenaprecioactual = priceProductText3003 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_3004") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_3004");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_3004');
                                                                    var concatenaprecioactual = priceProductText3004 * contador;
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

                                                                if (productoAgregado === "boton-agregar-pizza_3001") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_3001").innerText;
                                                                    idPizza = idProductText3001;
                                                                    nombreProducto = nameProductText3001;
                                                                    precioProducto = priceProductText3001;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_3002") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_3002").innerText;
                                                                    idPizza = idProductText3002;
                                                                    nombreProducto = nameProductText3002;
                                                                    precioProducto = priceProductText3002;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_3003") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_3003").innerText;
                                                                    idPizza = idProductText3003;
                                                                    nombreProducto = nameProductText3003;
                                                                    precioProducto = priceProductText3003;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_3004") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_3004").innerText;
                                                                    idPizza = idProductText3004;
                                                                    nombreProducto = nameProductText3004;
                                                                    precioProducto = priceProductText3004;
                                                                    console.log(cantidadselected);
                                                                }

                                                                var tamanioProducto = "";
                                                                var subtotal = concatenaprecioactualredondeado;
                                                                console.log("Subtotal" + subtotal);
                                                                var accionPizzas = "accionPizzas";

                                                                var urlServlet = "/ControladorPedidos?accion=" + encodeURIComponent(accionPizzas) + "&idpizza=" + encodeURIComponent(idPizza) + "&nombrepizza=" + encodeURIComponent(nombreProducto) + "&cantidadpizzas=" + encodeURIComponent(cantidadselected) + "&tamaniopizza=" + encodeURIComponent(tamanioProducto) + "&precioindividual=" + encodeURIComponent(precioProducto) + "&subtotal=" + encodeURIComponent(subtotal);
                                                                window.location.href = urlServlet;
                                                            }


        </script>


    </body>
</html>
