
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>



<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Home Gourmet</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="estilos_paginas_comunes/estilos_menu.css">
        <link rel="stylesheet" type="text/css" href="estilos_paginas_comunes/estilos_whatsapp_icon.css">
        <link rel="stylesheet" type="text/css" href="estilos_pagina_inicio.css">
        <script defer type="text/javascript" src="scripts_javascript/scripts.js"></script>
        <script src="https://kit.fontawesome.com/dfd2e1d119.js" crossorigin="anonymous"></script>         

    </head>
    <body>

        <jsp:include page="vistas_comunes/menu_principal.jsp"/>
        <jsp:include page="vistas_comunes/whatsapp_icon.jsp"/>

        <!--CONTENEDOR SUPERIOR PÁGINA DE INICIO, NOMBRE EMPRESA Y REDES SOCIALES-->

        <div class="container-fluid contenedor-pagina-inicio-nombre-empresa">
            <div class="row fila-pagina-inicio-nombre-empresa">
                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-7 columna-pagina-inicio-nombre-empresa p-0"> 


                    <div class="pagina-inicio-nombre-empresa-imagen">
                        <img src="imagenes_vistas/background-pizzasgourmetdeli.gif">
                    </div>
                </div>

                <div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-5 col-xl-5 columna-pagina-inicio-redes-sociales p-0">
                    <div class="conte-redes-sociales-transparencia">

                        <div class="conte-cada-red-social">
                            <div class="conte-cada-red-social-parraf">
                                <div id="conte-redes-sociales-facebook-text">
                                    <p id="facebook-parrafo">"Los mejores ingredientes en tu mesa <span>i</span>"</p>                                
                                </div>
                            </div>
                            <div class="conte-cada-red-social-icon">
                                <div id="conte-redes-sociales-facebook-icon">
                                    <i class="fa-solid fa-users"></i>
                                </div>
                                <div class="contenedor-icono-redes-gradient"></div>
                            </div>
                        </div>

                        <div class="conte-cada-red-social">
                            <div class="conte-cada-red-social-parraf">
                                <div id="conte-redes-sociales-instagram-text">
                                    <p id="instagram-parrafo">"Comparte tus momentos especiales <span>Q</span>"</p>                               
                                </div>
                            </div>
                            <div class="conte-cada-red-social-icon">
                                <div id="conte-redes-sociales-instagram-icon">
                                    <i class="fa-solid fa-users"></i>
                                </div>
                                <div class="contenedor-icono-redes-gradient"></div>
                            </div>
                        </div>

                        <div class="conte-cada-red-social">                            
                            <div class="conte-cada-red-social-parraf">
                                <div id="conte-redes-sociales-whatsapp-text">
                                    <p id="whatsapp-parrafo">"Cada pizza es una experiencia"</p>                            
                                </div>                                
                            </div>
                            <div class="conte-cada-red-social-icon">
                                <div id="conte-redes-sociales-whatsapp-icon">
                                    <i class="fa-solid fa-users"></i>
                                </div>  
                                <div class="contenedor-icono-redes-gradient"></div>
                            </div>
                        </div>

                        <div class="conte-cada-red-social">                                                       
                            <div class="conte-cada-red-social-parraf">
                                <div id="conte-redes-sociales-telegram-text">
                                    <p id="telegram-parrafo">"Alegra tu dia con una rebanada :)"</p>
                                </div> 
                            </div>
                            <div class="conte-cada-red-social-icon">
                                <div id="conte-redes-sociales-telegram-icon">
                                    <i class="fa-solid fa-users"></i>
                                </div>
                                <div class="contenedor-icono-redes-gradient"></div>   
                            </div>
                        </div>

                        <div class="conte-cada-red-social">                                                                                 
                            <div class="conte-cada-red-social-parraf">
                                <div id="conte-redes-sociales-tiktok-text">
                                    <p id="tiktok-parrafo">"¡La mejor pizza de tu vida...!"</p>
                                </div> 
                            </div>
                            <div class="conte-cada-red-social-icon">
                                <div id="conte-redes-sociales-tiktok-icon">
                                    <i class="fa-solid fa-users tiktok-icon-tresd"></i>
                                </div>                                 
                                <div class="contenedor-icono-redes-gradient"></div>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>

        <!--CONTENEDOR PÁGINA DE INICIO NOMBRE EMPRESA Y REDES SOCIALES-->

        <!--CONTENEDOR TÍTULO MENÚ PIZZAS-->

        <div class="container-fluid">
            <div class="row">
                <div class="id-titulo-menu col-12 col-xm-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <div class="titulo-menu">
                        <h2>PIZZAS GOURMET MENU</h2>
                    </div>
                </div>
            </div>            
        </div>

        <!--CONTENEDOR TÍTULO MENÚ PIZZAS-->

        <!--MENU RESTAURANT --> <!--MENU RESTAURANT --> <!--MENU RESTAURANT --> <!--MENU RESTAURANT --> <!--MENU RESTAURANT --> <!--MENU RESTAURANT -->

        <div class="container-fluid contenedor-de-tabla-menu m-0 p-0">
            <div class="row"  style=" margin: auto;">
                <div class="columna-tabla-menu col-12 col-sm-12 col-md-12 col-lg-12 p-0 m-0">
                    <div class="table-responsive-md tabla-precios">
                        <table>

                            <thead>
                                <tr id="">
                                    <th colspan="10" class=""></th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td style="border-top: 1.5px solid rgba(0,0,0,1); background-color: rgba(255,255,255,0.9);"></td>
                                    <td colspan="9" class="tittle-menu-medidas" style="border-top: 1.5px solid rgba(0,0,0,1);">TAMAÑOS</td>
                                </tr>

                                <tr>
                                    <td> </td>
                                    <td class="menu-medidas"><span>Antojito (mini)</span></td>
                                    <td class="menu-medidas"><span>Solitario (individual)</span></td>
                                    <td class="menu-medidas"><span>Pareja (chica)</span></td>
                                    <td class="menu-medidas"><span>Compitas (mediana)</span></td>
                                    <td class="menu-medidas"><span>Tribu (grande)</span></td>
                                    <td class="menu-medidas"><span>Gigante (familiar)</span></td>
                                    <td class="menu-medidas"><span>Bebidas </span></td>
                                    <td class="menu-medidas"><span>Postres </span></td>
                                    <td class="menu-medidas"><span>Extras </span></td>
                                </tr> 

                                <c:forEach items="${listaProduct}" var="product">

                                    <tr>
                                        <td class="tittlemenu">${product.categoriaProducto}</td>
                                        <td colspan="9" class="espacio-tittle-menu"></td>
                                    </tr> 


                                    <tr>
                                        <td class="nombreproducto">${product.nombreProducto}</td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioProductoMini eq 0}">
                                                    n/a
                                                </c:when>
                                                <c:otherwise>
                                                    $${product.precioProductoMini}
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioProductoIndividual eq 0}">
                                                    n/a
                                                </c:when>
                                                <c:otherwise>
                                                    $${product.precioProductoIndividual}
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioProductoChica eq 0}">
                                                    n/a 
                                                </c:when>
                                                <c:otherwise>
                                                    $${product.precioProductoChica}
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioProductoMediana eq 0}">
                                                    n/a 
                                                </c:when>
                                                <c:otherwise>
                                                    $${product.precioProductoMediana}
                                                </c:otherwise>
                                            </c:choose>                                            
                                        </td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioProductoGrande eq 0}">
                                                    n/a 
                                                </c:when>
                                                <c:otherwise>
                                                    $${product.precioProductoGrande}
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioProductoFamiliar eq 0}">
                                                    n/a 
                                                </c:when>
                                                <c:otherwise>
                                                    $${product.precioProductoFamiliar}
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioBebidas eq 0}">
                                                    n/a  
                                                </c:when>
                                                <c:otherwise>
                                                    ${product.precioBebidas}
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioPostres eq 0}">
                                                    n/a 
                                                </c:when>
                                                <c:otherwise>
                                                    $${product.precioPostres}
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td rowspan="2" class="precio-producto-menu">
                                            <c:choose>
                                                <c:when test="${product.precioExtras eq 0}">
                                                    n/a   
                                                </c:when>
                                                <c:otherwise>
                                                    $${product.precioExtras}
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="descripcion-producto-table">${product.descripcionProducto}</td>
                                    </tr>

                                </c:forEach>

                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>

        <!--jsp:forward page="/ControladorProductosListar"       -->     

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>



    </body>
</html>

