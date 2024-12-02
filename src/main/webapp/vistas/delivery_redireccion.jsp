
<!DOCTYPE html>
<html>
    <head>
        <title>Pizzas Gourmet Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="/estilos_paginas_comunes/estilos_menu_logo.css">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_delivery.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>    



    </head>
    <body>

        <jsp:include page="../vistas_comunes/menu_principal_logo.jsp"/>

        <div class="container-fluid contenedor-inicio-delivery p-0">
            <div class="row fila-inicio-delivery m-0 p-0">

                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 columna-inicio-delivery-left p-0">
                    <div id="conte-forma-envio">
                        <div id="datos-envio-tittle">
                            <h2>SELECCIONA LA FORMA DE ENTREGA</h2>
                        </div>
                        <div id="datos-envio-icons">
                            <div class="iconos-pickup-delivery">
                                <div class="formulario-inicio-codigo">
                                    <div class="cristal"></div>
                                    <button type="submit" id="boton-rappi" name="accion" value="solicitud domicilio" onclick="botonRappi();"></button>
                                </div>
                                <div class="conte-parrafo-envio">
                                    <p>comprar en rappi.com.mx </p>
                                </div>
                            </div>

                            <div class="iconos-pickup-delivery">
                                <div class="conte-iconos-circle-moto">
                                    <div class="cristal"></div>
                                    <button id="toggleButton" class="iconos-circle-moto" name="accion" value="" onclick="botonUberEats();"></button>
                                </div>
                                <div class="conte-parrafo-envio">
                                    <p>comprar en didi-food.com.mx</p>
                                </div> 

                            </div>
                        </div>
                        <div id="conte-link-home">
                            <a id="link-inicio" href="../index.jsp"><i class="fa-solid fa-house" style="color: rgba(255,255,255,1);"></i>&nbsp; &nbsp;&nbsp;Regresar a la página de inicio</a>
                        </div>

                    </div>
                </div> 

                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 columna-inicio-delivery-right p-0">

                </div> 

            </div>
        </div>
    </div>

    <script src="../scripts_javascript/deliveryredireccionjs.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


</body>
</html>
