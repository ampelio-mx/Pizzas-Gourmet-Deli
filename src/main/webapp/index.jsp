
<!DOCTYPE html>
<html>
    <head>
        <title>Pizzas Gourmet Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="estilos_index.css">
        <link rel="stylesheet" type="text/css" href="estilos_paginas_comunes/estilos_menu_logo.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>    
    </head>
    <body>

        <jsp:include page="vistas_comunes/menu_principal_logo.jsp"/>

        <div class="container-fluid contenedor-inicio-delivery p-0">
            <div class="row fila-inicio-delivery m-0 p-0">

                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 columna-inicio-delivery-left p-0">
                    <div id="conte-forma-envio">
                        <div id="datos-envio-tittle">
                            <h2>SELECCIONA LA FORMA DE ENTREGA</h2>
                        </div>
                        <div id="datos-envio-icons">
                            <div class="iconos-pickup-delivery-left">
                                <div class="iconos-pickup-delivery-tienda">
                                    <div class="conte-formulario-inicio-codigo">
                                        <form action="/ControladorSucursales" method="POST" class="formulario-inicio-codigo">
                                            <div class="cristal-tienda"></div>
                                            <button type="submit" class="iconos-circle-store-boton" name="accion" value="solicituddomicilioiztacalco"></button>
                                        </form>
                                        <div class="nombre-sucursal">
                                            <p>Iztacalco</p>
                                        </div>
                                    </div>
                                    <div class="conte-formulario-inicio-codigo">
                                        <form action="/ControladorSucursales" method="POST" class="formulario-inicio-codigo">
                                            <div class="cristal-tienda"></div>
                                            <button type="submit" class="iconos-circle-store-boton" name="accion" value="solicituddomicilioviaducto"></button>
                                        </form>
                                        <div class="nombre-sucursal">
                                            <p>Viaducto</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="conte-parrafo-envio">
                                    <p>"Pick up" o comer en tienda</p>
                                </div>
                            </div>
                            <div class="iconos-pickup-delivery-right">
                                <div class="conte-iconos-circle-moto">
                                    <div class="cristal"></div>
                                    <button id="toggleButton" class="iconos-circle-moto" name="accion" value="" onclick="toggle();"></button>
                                </div>
                                <div class="conte-parrafo-envio">
                                    <p>Delivery</p>
                                </div> 
                            </div>
                        </div>
                        <div id="datos-envio-mapa">
                            <div id="conte-instrucciones-domicilio">
                                <p>Ingresa tu domicilio con código postal o pulsa el botón 'Usar mi ubicación' y espera unos segundos. Posteriormente haz click en 'Enviar domicilio'.</p>
                            </div>
                            <input type="text" id="campo-texto-mapa" placeholder="Buscar domicilio...">
                            <!-- -->
                            <div id="map-loading-indicator-hide">
                                <div id="map-loading-indicator">
                                    <div class="spinner"></div>
                                    <p>Cargando ubicación...</p>
                                </div>
                            </div>
                            <!-- -->
                            <div id="map">

                            </div>
                            <div id="datos-envio-botones">
                                <div id="conte-boton-ubicacion">
                                    <button class="boton-mapa" id="btn-geolocalizar" onclick=" cargarMapa();">Usar mi ubicación</button>                                    
                                </div>
                                <div id="conte-boton-enviar-ubicacion">
                                    <button class="boton-mapa" onclick="enviarCodigoPostal();">Enviar domicilio</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 

                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 columna-inicio-delivery-right p-0">
                    <div id="conte-logo-empresa"></div>
                </div> 

                <script async
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDfDpaIjk_-qr6WOxKqqP7ZxX2RJz1Wxg&libraries=places&callback=initMap">
                </script>


            </div>
        </div>


        <script src="indexjs.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


    </body>
</html>
