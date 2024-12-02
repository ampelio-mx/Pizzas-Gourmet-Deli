
<!DOCTYPE html>
<html>
    <head>
        <title>Promociones</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_promociones.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>        

    </head>
    <body>


        <jsp:include page="../vistas_comunes/menu_principal.jsp"/>
        <jsp:include page="../vistas_comunes/whatsapp_icon.jsp"/>

        <!--Boostrap Carousel -->

          <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">


                <div class="carousel-item active" data-bs-interval="2500">
                    <!-- PROMOCIÓN TRADICIONALES -->

                    <div class="container-fluid contenedor-de-promocion-tradicionales p-0">
                        <div class="row p-0 m-0">
                            <div class="columna-contenedor-de-promociones col-12 col-sm-12 col-md-12 col-lg-12 p-0 m-0">

                                <div class="conte-promo-texto">
                                    <div class="contenedor-promo-price">
                                        <div class="contenedor-promo-price-white">                        
                                            <p>¡Promoción!</p>                                                                    
                                        </div>
                                    </div>

                                    <div class="contenedor-promo-price-99">
                                        <p>$99.00</p>
                                    </div>

                                    <div class="contenedor-promo-pizza-grande">
                                        <p>PIZZA GRANDE</p>
                                    </div>

                                    <div class="contenedor-promo-tres-pizzas">
                                        <p>
                                            <span>*&nbsp;PEPPERONI *&nbsp;QUESO *&nbsp;HAWAINA</span>
                                        </p>
                                    </div>

                                    <div class="contenedor-promo-dos-pizzas">
                                        <div class="contenedor-promo-dos-pizzas-text">
                                            <p>
                                                <span>*&nbsp;CHAMPERONI</span>
                                            </p>
                                            <p>
                                                <span>*&nbsp;MEXICANA</span>
                                            </p>
                                        </div>
                                        <div class="contenedor-promo-price-129">
                                            <p>$129.00</p>
                                        </div>                                        
                                    </div>
                                </div>

                                <div class="conte-promo-price-imagen">
                                    <div class="contenedor-promo-price-imagen">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>



                <!-- PIZZAS GOURMET VS TRADICIOALES --> <!-- PIZZAS GOURMET VS TRADICIOALES --> <!-- PIZZAS GOURMET VS TRADICIOALES --> <!-- PIZZAS GOURMET VS TRADICIOALES--> 
                <div class="carousel-item" data-bs-interval="4000"> 

                    <div class="container-fluid container-cards-pizzeria-gourmet-vs-tradicional";>
                        <div class="row fila-tradi-vs-gour">

                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 m-0 p-0 column-conte-left-gour-vs-tra">
                                <div class="contenedor-izquierdo-gourmet-vs-tradicional">
                                    <div class="contenedor-izquierdo-gourmet-vs-tradicional-imagen">
                                        <img src="/imagenes_vistas/promociones-pizza.gif">
                                    </div>
                                    <div class="contenedor-izquierdo-gourmet-vs-tradicional-texto">
                                        <div class="contenedor-izquierdo-gourmet-vs-tradicional-texto-1"><p>PIZZAS</p></div>
                                        <div class="contenedor-izquierdo-gourmet-vs-tradicional-texto-2"><p>Gourmet</p></div>
                                        <div class="contenedor-izquierdo-gourmet-vs-tradicional-texto-3"><p>Ingredientes</p></div>
                                        <div class="contenedor-izquierdo-gourmet-vs-tradicional-texto-4"><p>Queso mozzarella importado</p></div>  
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 m-0 p-0 column-conte-right-gour-vs-tra">
                                <div class="contenedor-derecho-gourmet-vs-tradicional">

                                    <div class="contenedor-derecho-gourmet-vs-tradicional-texto">
                                        <div class="contenedor-derecho-gourmet-vs-tradicional-texto-1"><p>PIZZA</p></div>
                                        <div class="contenedor-derecho-gourmet-vs-tradicional-texto-2"><p>Tradicional</p></div>
                                        <div class="contenedor-derecho-gourmet-vs-tradicional-texto-3"><p>Ingredientes</p></div>
                                        <div class="contenedor-derecho-gourmet-vs-tradicional-texto-4"><p>Mezcla de quesos nacionales</p></div> 
                                    </div>
                                    <div class="contenedor-derecho-gourmet-vs-tradicional-imagen">
                                        <img src="/imagenes_vistas/promociones-pizza.gif">
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                    <div class="gourmet-vs-tradicional-vs-1">
                        <h2>VS</h2>                   
                    </div> 

                    <div class="contenedor-centro-gourmet-vs-tradicional">
                    </div>
                </div>


                <!--<div class="carousel-item">
                    <img src="..." class="d-block w-100" alt="...">
                </div>-->
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    </body>
</html>
