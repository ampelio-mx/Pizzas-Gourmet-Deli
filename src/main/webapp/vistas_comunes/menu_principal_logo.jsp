
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilos_paginas_comunes/estilos_menu.css">
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>   

        <script type="text/javascript">

<!-- funci�n para obtener ruta y regresar al home-->
            function regresarPaginaInicio() {

                        var obtenerRuta = "${pageContext.request.contextPath}";
                console.log(obtenerRuta);
                window.location.href = obtenerRuta + "/";
            }
        </script>
        
    </head>
    <body>

        <div class="contenedor-navegador container-fluid p-0">
            <div class="row-navegador row m-0 p-0">

                <!--LOGO EMPRESA -->
                <div class="columna-logo col-12 col-sm-12 col-md-12 col-lg-3 p-0 m-0">
                    <div class="pizza-icon">
                        <p class="parrafo-pizza">P</p>    
                    </div>
                    <div class="div-logo-nav">
                        <a href="javascript:void(0);" onclick="regresarPaginaInicio()" class="p1">PIZZAS GOURMET</a>
                        <p>�Menos masa, m�s sabor!</p>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


    </body>
</html>
