

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Promociones</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_pizzas.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>  
    </head>

    <body>


        <jsp:include page="../vistas_comunes/menu_principal.jsp"/>
        <jsp:include page="../vistas_comunes/whatsapp_icon.jsp"/>

        <div id="contenedor-spinner-pizzas">
            <div id="pizza-loading-indicator">
                <div class="spinner"></div>
                <p>Cargando productos...</p>
            </div>
        </div>
        <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR -->

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
                                    <span class="span-titulo-cards">PIZZAS</span>
                                    <span class="span-titulo-cards">TRADICIONALES</span>                                    
                                </h2>                    
                            </div>
                        </div>
                    </div>

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

                                                <div class="contenedor-de-tamano-tarjeta">
                                                    <div class="contenedor-de-tamano-tarjeta-label-uno">
                                                        <p class="contenedor-de-tamano-tarjeta-label-uno-p">Tamaño</p>
                                                    </div>
                                                    <div class="contenedor-de-tamano-tarjeta-label-dos">
                                                        <form id="formTamanio"> 
                                                            <select name="accionformulario" id="${var.idProducto}" class="drop-down-list" onchange="enviarDatosAlServlet(this); enviarDatos(this)"> 
                                                                <option class="opcion-selecionar" disabled selected>Seleccionar</option>
                                                                <option class="contenedor-de-tamano-tarjeta-label-dos-p" value="preciomini">Mini</option>
                                                                <option class="contenedor-de-tamano-tarjeta-label-dos-p" value="precioindi">Individual</option>                                                                   
                                                                <option class="contenedor-de-tamano-tarjeta-label-dos-p" value="preciochica">Chica</option>
                                                                <option class="contenedor-de-tamano-tarjeta-label-dos-p" value="preciomediana">Mediana</option>
                                                                <option class="contenedor-de-tamano-tarjeta-label-dos-p" value="preciogrande">Grande</option>
                                                                <option class="contenedor-de-tamano-tarjeta-label-dos-p" value="preciofamiliar">Familiar</option>
                                                            </select>
                                                        </form>

                                                    </div>
                                                </div>
                                                <div class="contenedor-de-precio-tarjeta">
                                                    <div class="contenedor-de-precio-tarjeta-label-uno">
                                                        <p class="contenedor-de-precio-tarjeta-label-uno-p">Precio</p>
                                                    </div>


                                                    <div class="contenedor-de-precio-tarjeta-label-dos">
                                                        <label id="labelParametros_${var.idProducto}" class="label-precio-pizza">$0.00</label>
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
                                        <li class="page-item listitem-paginacion"><a class="page-link" href="/ControladorProductos?accion=pizzastrauno">1</a></li>
                                        <li class="page-item listitem-paginacion"><a class="page-link" href="/ControladorProductos?accion=pizzastrados">2</a></li>
                                        <li class="page-item listitem-paginacion"><a class="page-link" href="/ControladorProductos?accion=pizzastratres">3</a></li>
                                        <li class="page-item listitem-paginacion"><a class="page-link" href="/ControladorProductos?accion=pizzastracuatro">4</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>



                    <script>

                        var idProducto = 0;
                        var nombreProducto = "";
                        var tamanioProducto = "";
                        var precioProducto = 0;

                        function enviarDatosAlServlet(selectElement) {

                            //resetear etiquetas de precio antes de seleccionar cualquier producto
                            var preciolabelpizzas = document.getElementsByClassName("label-precio-pizza");
                            for (var i = 0; i < preciolabelpizzas.length; i++) {
                                preciolabelpizzas[i].textContent = "$0.00";
                            }

                            var cantidadlabelpizzas = document.getElementsByClassName("contenedor-de-cantidad-tarjeta-control-dos-p");
                            for (var i = 0; i < cantidadlabelpizzas.length; i++) {
                                cantidadlabelpizzas[i].textContent = "1";
                            }

                            var formulario = selectElement.id;
                            var opcionSeleccionada = selectElement.value;
                            console.log("Formulario seleccionado" + formulario);
                            console.log("Opción seleccionada" + opcionSeleccionada);



                            console.log(opcionSeleccionada);

                            var datos = {
                                selectedId: formulario, // Aquí puedes obtener el ID del select si lo necesitas                                
                                selectedOption: opcionSeleccionada
                            };

                            fetch('/ControladorProductosDropDownList', {
                                method: 'POST',
                                headers: {
                                    'Content-Type': '/application/json'
                                },
                                body: JSON.stringify(datos)
                            })
                                    .then(response => {
                                        if (response.ok) {
                                            return response.json();
                                        } else {
                                            throw new Error('La solicitud no fue exitosa');
                                        }
                                    })
                                    .then(data => {
                                        // Suponiendo que data contiene la propiedad redirectUrl con la URL de redirección
                                        //window.location.href = data.redirectUrl;
                                        const nombrePizza = data.nombrePizza;
                                        const tamanioPizza = data.tamanioPizza;
                                        const precioPizza = data.precioPizza;
                                        console.log("Nombre de pizza seleccionada: " + nombrePizza);
                                        console.log("Tamanio de pizza seleccionada: " + tamanioPizza);
                                        console.log("Precio de pizza seleccionada: " + precioPizza);

                                        idProducto = formulario;
                                        console.log("Id de pizza seleccionada: " + idProducto);
                                        nombreProducto = nombrePizza;
                                        tamanioProducto = tamanioPizza;
                                        precioProducto = precioPizza;

                                        var resultadoDiv = "";
                                        switch (formulario) {

                                            case "1005":
                                                resultadoDiv = document.getElementById('labelParametros_1005');
                                                resultadoDiv.innerHTML =  "$" + precioPizza;
                                                break;

                                            case "1006":
                                                resultadoDiv = document.getElementById('labelParametros_1006');
                                                resultadoDiv.innerHTML =  "$" + precioPizza;

                                                break;

                                            case "1007":
                                                resultadoDiv = document.getElementById('labelParametros_1007');
                                                resultadoDiv.innerHTML =  "$" + precioPizza;
                                                break;

                                            case "1008":
                                                resultadoDiv = document.getElementById('labelParametros_1008');
                                                resultadoDiv.innerHTML =  "$" + precioPizza;
                                                break;

                                            default:

                                                alert("No se ha seleccionado ninguna opción");
                                                break;
                                        }
                                    }

                                    )
                                    .catch(error => {
                                        console.error('Error al realizar la solicitud:', error);
                                    });

                        }

                        //resetear label de opción seleccionada todos los formularios
                        function enviarDatos(selector) {
                            // Obtener todos los selectores de la clase drop-down-list
                            var selects = document.querySelectorAll('.drop-down-list');
                            // Iterar sobre cada selector
                            selects.forEach(function (select) {
                                // Verificar si el selector actual es igual al seleccionado
                                if (select === selector) {
                                    // Si es igual, no hacemos nada
                                } else {
                                    // Si no es igual, establecemos su valor como "Seleccionar"
                                    select.value = 'Seleccionar';
                                }
                            });
                        }

                        //función para restar cantidad

                        function restarCantidadSelect(disminuir) {
                            var btnDismunuir = disminuir.id;
                            console.log("botón disminuir seleccionado: " + btnDismunuir);

                            if (btnDismunuir === "boton-disminuir_1005") {
                                var contadorLabel = document.getElementById("cant-Pizzas_1005");
                                var contador = parseInt(contadorLabel.innerText);
                                if (contador > 1) {
                                    contador = contador - 1;
                                    contadorLabel.innerText = contador;
                                    console.log("Cantidad de productos: " + contador);
                                } else {
                                    alert("El pedido mínimo debe de ser de un producto");
                                }
                                var precioactual = document.getElementById('labelParametros_1005');
                                var concatenaprecioactual = precioProducto * contador;
                                var concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                            } else if (btnDismunuir === "boton-disminuir_1006") {
                                var contadorLabel = document.getElementById("cant-Pizzas_1006");
                                var contador = parseInt(contadorLabel.innerText);
                                if (contador > 1) {
                                    contador = contador - 1;
                                    contadorLabel.innerText = contador;
                                    console.log("Cantidad de productos: " + contador);
                                } else {
                                    alert("El pedido mínimo debe de ser de un producto");
                                }
                                var precioactual = document.getElementById('labelParametros_1006');
                                var concatenaprecioactual = precioProducto * contador;
                                var concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                            } else if (btnDismunuir === "boton-disminuir_1007") {
                                var contadorLabel = document.getElementById("cant-Pizzas_1007");
                                var contador = parseInt(contadorLabel.innerText);
                                if (contador > 1) {
                                    contador = contador - 1;
                                    contadorLabel.innerText = contador;
                                    console.log("Cantidad de productos: " + contador);
                                } else {
                                    alert("El pedido mínimo debe de ser de un producto");
                                }
                                var precioactual = document.getElementById('labelParametros_1007');
                                var concatenaprecioactual = precioProducto * contador;
                                var concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                            } else if (btnDismunuir === "boton-disminuir_1008") {
                                var contadorLabel = document.getElementById("cant-Pizzas_1008");
                                var contador = parseInt(contadorLabel.innerText);
                                if (contador > 1) {
                                    contador = contador - 1;
                                    contadorLabel.innerText = contador;
                                    console.log("Cantidad de productos: " + contador);
                                } else {
                                    alert("El pedido mínimo debe de ser de un producto");
                                }
                                var precioactual = document.getElementById('labelParametros_1008');
                                var concatenaprecioactual = precioProducto * contador;
                                var concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                            }

                        }

                        function sumarCantidadSelect(aumentar) {
                            var btnAumentar = aumentar.id;
                            console.log(btnAumentar);

                            if (btnAumentar === "boton-aumentar_1005") {
                                var contadorLabel = document.getElementById("cant-Pizzas_1005");
                                var contador = parseInt(contadorLabel.innerText);
                                contador = contador + 1;
                                contadorLabel.innerText = contador;
                                console.log("El número es: " + contador);
                                var precioactual = document.getElementById('labelParametros_1005');
                                var concatenaprecioactual = precioProducto * contador;
                                var concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                            } else if (btnAumentar === "boton-aumentar_1006") {
                                var contadorLabel = document.getElementById("cant-Pizzas_1006");
                                var contador = parseInt(contadorLabel.innerText);
                                contador = contador + 1;
                                contadorLabel.innerText = contador;
                                console.log("El número es: " + contador);
                                var precioactual = document.getElementById('labelParametros_1006');
                                var concatenaprecioactual = precioProducto * contador;
                                var concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                            } else if (btnAumentar === "boton-aumentar_1007") {
                                var contadorLabel = document.getElementById("cant-Pizzas_1007");
                                var contador = parseInt(contadorLabel.innerText);
                                contador = contador + 1;
                                contadorLabel.innerText = contador;
                                console.log("El número es: " + contador);
                                var precioactual = document.getElementById('labelParametros_1007');
                                var concatenaprecioactual = precioProducto * contador;
                                var concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                            } else if (btnAumentar === "boton-aumentar_1008") {
                                var contadorLabel = document.getElementById("cant-Pizzas_1008");
                                var contador = parseInt(contadorLabel.innerText);
                                contador = contador + 1;
                                contadorLabel.innerText = contador;
                                console.log("El número es: " + contador);
                                var precioactual = document.getElementById('labelParametros_1008');
                                var concatenaprecioactual = precioProducto * contador;
                                var concatenaprecioactualredondeado = concatenaprecioactual.toFixed(2);
                                precioactual.innerHTML = "$" + concatenaprecioactualredondeado;
                            }
                        }


                        //funcion enviar pedido

                        function enviarPedido(agregarproducto) {

                            var productoAgregado = agregarproducto.id;
                            console.log(productoAgregado);

                            if (productoAgregado === "boton-agregar-pizza_1005") {
                                var cantidadselected = document.getElementById("cant-Pizzas_1005").innerText;
                                console.log(cantidadselected);
                            } else if (productoAgregado === "boton-agregar-pizza_1006") {
                                var cantidadselected = document.getElementById("cant-Pizzas_1006").innerText;
                                console.log(cantidadselected);
                            } else if (productoAgregado === "boton-agregar-pizza_1007") {
                                var cantidadselected = document.getElementById("cant-Pizzas_1007").innerText;
                                console.log(cantidadselected);
                            } else if (productoAgregado === "boton-agregar-pizza_1008") {
                                var cantidadselected = document.getElementById("cant-Pizzas_1008").innerText;
                                console.log(cantidadselected);
                            }


                            var subtotal = cantidadselected * precioProducto;
                            console.log("Subtotal" + subtotal);
                            var accionPizzas = "accionPizzas";
                            
                                
                        if (cantidadselected <= 1) {
                            
                            alert("Solicitud recibida. Agregando en carrito: " + cantidadselected + " producto. Por favor espere...");
                        }
                        if (cantidadselected > 1) {

                            alert("Solicitud recibida. Agregando en carrito: " + cantidadselected + " productos. Por favor espere...");
                        }


                            var urlServlet = "/ControladorPedidos?accion=" + encodeURIComponent(accionPizzas) + "&idpizza=" + encodeURIComponent(idProducto) + "&nombrepizza=" + encodeURIComponent(nombreProducto) + "&cantidadpizzas=" + encodeURIComponent(cantidadselected) + "&tamaniopizza=" + encodeURIComponent(tamanioProducto) + "&precioindividual=" + encodeURIComponent(precioProducto) + "&subtotal=" + encodeURIComponent(subtotal);
                            window.location.href = urlServlet;

                        }
                        ;

                    </script>
                }
                </div>
            </div>
        </div>



        <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR --> <!--CARDS A UTILIZAR -->

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="../scripts_javascript/pizzas.js"></script>

</body>
</html>
