
<!DOCTYPE html>
<html>
    <head>
        <title>Ubicaciones</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="../estilos_vistas/estilos_ubicaciones.css"> 
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>  

    </head>
    <body>
        <jsp:include page="../vistas_comunes/menu_principal.jsp"/>
        <jsp:include page="../vistas_comunes/whatsapp_icon.jsp"/>


        <div class="container-fluid contenedor-ubicaciones-tittle p-0">
            <div class="row fila-ubicaciones-tittle m-0 p-0">

                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 columna-contenedor-sucursales-title">
                    <h1 id="sucursales-title">SUCURSALES</h1>
                </div>

            </div>  
        </div>
        
        <div class="container-fluid contenedor-ubicaciones p-0">
            <div class="row fila-ubicaciones m-0 p-0">


                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 columna-contenedor-sucursales">
                    <div class="div-contenedor-sucursales">
                        <div class="columna-nombre-sucursal">
                            <h2 id="sucursal-coyuya">COYUYA</h2>
                        </div>
                        <div class="columna-imagenes-sucursal">
                            <div class="col-imagen-left-left"></div>
                            <div class="col-imagen-left-right"></div>                                
                            <div class="columna-mapa-sucursal-addres-iztacalco">
                                <p>Av. Hidalgo 230</p>
                                <p>La Cruz Coyuya</p>
                                <p>Iztacalco</p>
                                <p>08310</p>
                                <p>CDMX</p>
                                <p>Tel. 56 2108 0525</p>
                            </div> 
                        </div>
                        <div class="columna-mapa-sucursal">
                            <div id="mapa"></div>                            
                        </div>
                        <div class="columna-direccion-sucursal"></div>
                    </div>
                </div>     

                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 columna-contenedor-sucursales">
                    <div class="div-contenedor-sucursales">
                        <div class="columna-nombre-sucursal">
                            <h2 id="sucursal-viaducto">VIADUCTO</h2>
                        </div>
                        <div class="columna-imagenes-sucursal">
                            <div class="col-imagen-right-left"></div>                            
                            <div class="col-imagen-right-right"></div> 
                            <div class="columna-mapa-sucursal-addres-viaducto">
                                <p>Marcos Carrillo 309</p>
                                <p>Viaducto Piedad</p>
                                <p>Iztacalco</p>
                                <p>08200</p>
                                <p>CDMX</p>
                                <p>Tel. 56 1175 9329</p>
                            </div>
                        </div>
                        <div class="columna-mapa-sucursal">
                            <div id="mapados"></div>                            
                        </div>
                        <div class="columna-direccion-sucursal"></div>
                    </div>

                    <script async
                            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDfDpaIjk_-qr6WOxKqqP7ZxX2RJz1Wxg&callback=initMap">
                    </script>

                </div>
            </div>
        </div>

        <script src="../scripts_javascript/ubicacionesjs.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


    </body>
</html>
