

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Antojitos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_extras_antojitos.css">
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
                                    <span class="span-titulo-cards">ANTOJITOS</span>                                   
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
                                                        <label id="labelParametros_${var.idProducto}" class="label-precio-pizza">${var.precioExtras}</label>
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
                                                <label id="idprice_${var.idProducto}">${var.precioExtras}</label>
                                            </div>

                                        </div>
                                    </div> 
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                    <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> <!--CONTENEDOR CARDS--> 







                </div>
            </div>
        </div>



        <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR -->

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="../scripts_javascript/pizzas.js"></script>


        <script>



                                                            var idProduct5001 = document.getElementById("idvalue_5001");
                                                            var idProductText5001 = idProduct5001.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText5001);
                                                            var idProduct5002 = document.getElementById("idvalue_5002");
                                                            var idProductText5002 = idProduct5002.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText5002);
                                                            var idProduct5003 = document.getElementById("idvalue_5003");
                                                            var idProductText5003 = idProduct5003.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText5003);
                                                            var idProduct5004 = document.getElementById("idvalue_5004");
                                                            var idProductText5004 = idProduct5004.textContent;
                                                            console.log("El id del producto seleccionado es: " + idProductText5004);

                                                            var nameProduct5001 = document.getElementById("idname_5001");
                                                            var nameProductText5001 = nameProduct5001.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText5001);
                                                            var nameProduct5002 = document.getElementById("idname_5002");
                                                            var nameProductText5002 = nameProduct5002.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText5002);
                                                            var nameProduct5003 = document.getElementById("idname_5003");
                                                            var nameProductText5003 = nameProduct5003.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText5003);
                                                            var nameProduct5004 = document.getElementById("idname_5004");
                                                            var nameProductText5004 = nameProduct5004.textContent;
                                                            console.log("El nombre del producto seleccionado es: " + nameProductText5004);

                                                            var priceProduct5001 = document.getElementById("idprice_5001");
                                                            var priceProductText5001 = priceProduct5001.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText5001);
                                                            var priceProduct5002 = document.getElementById("idprice_5002");
                                                            var priceProductText5002 = priceProduct5002.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText5002);
                                                            var priceProduct5003 = document.getElementById("idprice_5003");
                                                            var priceProductText5003 = priceProduct5003.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText5003);
                                                            var priceProduct5004 = document.getElementById("idprice_5004");
                                                            var priceProductText5004 = priceProduct5004.textContent;
                                                            console.log("El precio del producto seleccionado es: " + priceProductText5004);

                                                            //función para restar cantidad
                                                            var concatenaprecioactualredondeado = 0;
                                                            function restarCantidadSelect(disminuir) {
                                                                var btnDismunuir = disminuir.id;
                                                                console.log("botón disminuir seleccionado: " + btnDismunuir);

                                                                if (btnDismunuir === "boton-disminuir_5001") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_5001");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_5001');
                                                                    var concatenaprecioactual = priceProductText5001 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;

                                                                } else if (btnDismunuir === "boton-disminuir_5002") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_5002");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_5002');
                                                                    var concatenaprecioactual = priceProductText5002 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnDismunuir === "boton-disminuir_5003") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_5003");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_5003');
                                                                    var concatenaprecioactual = priceProductText5003 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnDismunuir === "boton-disminuir_5004") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_5004");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    if (contador > 1) {
                                                                        contador = contador - 1;
                                                                        contadorLabel.innerText = contador;
                                                                        console.log("Cantidad de productos: " + contador);
                                                                    } else {
                                                                        alert("El pedido mínimo debe de ser de un producto");
                                                                    }
                                                                    var precioactual = document.getElementById('labelParametros_5004');
                                                                    var concatenaprecioactual = priceProductText5003 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                }

                                                            }

                                                            function sumarCantidadSelect(aumentar) {
                                                                var btnAumentar = aumentar.id;
                                                                console.log(btnAumentar);

                                                                if (btnAumentar === "boton-aumentar_5001") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_5001");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_5001');
                                                                    var concatenaprecioactual = priceProductText5001 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_5002") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_5002");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_5002');
                                                                    var concatenaprecioactual = priceProductText5002 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_5003") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_5003");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_5003');
                                                                    var concatenaprecioactual = priceProductText5003 * contador;
                                                                    concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                                                    precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                                                                } else if (btnAumentar === "boton-aumentar_5004") {
                                                                    var contadorLabel = document.getElementById("cant-Pizzas_5004");
                                                                    var contador = parseInt(contadorLabel.innerText);
                                                                    contador = contador + 1;
                                                                    contadorLabel.innerText = contador;
                                                                    console.log("El número es: " + contador);
                                                                    var precioactual = document.getElementById('labelParametros_5004');
                                                                    var concatenaprecioactual = priceProductText5004 * contador;
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

                                                                if (productoAgregado === "boton-agregar-pizza_5001") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_5001").innerText;
                                                                    idPizza = idProductText5001;
                                                                    nombreProducto = nameProductText5001;
                                                                    precioProducto = priceProductText5001;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_5002") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_5002").innerText;
                                                                    idPizza = idProductText5002;
                                                                    nombreProducto = nameProductText5002;
                                                                    precioProducto = priceProductText5002;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_5003") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_5003").innerText;
                                                                    idPizza = idProductText5003;
                                                                    nombreProducto = nameProductText5003;
                                                                    precioProducto = priceProductText5003;
                                                                    console.log(cantidadselected);
                                                                } else if (productoAgregado === "boton-agregar-pizza_5004") {
                                                                    cantidadselected = document.getElementById("cant-Pizzas_5004").innerText;
                                                                    idPizza = idProductText5004;
                                                                    nombreProducto = nameProductText5004;
                                                                    precioProducto = priceProductText5004;
                                                                    console.log(cantidadselected);
                                                                }

                                                                var tamanioProducto = "";
                                                                var subtotal = concatenaprecioactualredondeado;
                                                                console.log("Subtotal" + subtotal);
                                                                var accionPizzas = "accionPizzas";

                                                                var urlServlet = "/ControladorPedidos?accion=" + encodeURIComponent(accionPizzas) + "&idpizza=" + encodeURIComponent(idPizza) + "&nombrepizza=" + encodeURIComponent(nombreProducto) + "&cantidadpizzas=" + encodeURIComponent(cantidadselected) + "&tamaniopizza=" + encodeURIComponent(tamanioProducto) + "&precioindividual=" + encodeURIComponent(precioProducto) + "&subtotal=" + encodeURIComponent(subtotal);
                                                                window.location.href = urlServlet;

                                                            }
                                                            ;

        </script>



    </body>
</html>
