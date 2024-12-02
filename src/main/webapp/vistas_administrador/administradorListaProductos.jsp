
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="application/vnd.ms-excel" %>

<%

    String nombreArchivo = "Catalogo_de_Productos.xls";
    response.setHeader("Content-Disposition", "attachment;filename=" + nombreArchivo);
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catalogo de productos</title>
    </head>
    <body>
        <h1 style="text-align: center">Catálogo de productos</h1>
        
        <table class="table">
            <thead>
                <tr>

                    <th scope="col">Id Producto</th>
                    <th scope="col">Nombre Producto</th>
                    <th scope="col">Precio Mini</th>
                    <th scope="col">Precio Individual</th>
                    <th scope="col">Precio Chica</th>
                    <th scope="col">Precio Mediana</th>
                    <th scope="col">Precio Grande</th>
                    <th scope="col">Precio Familiar</th>
                    <th scope="col">Diferenciador Pizzas</th>
                </tr>
            </thead>
            <tbody>  

            <c:forEach var="productos" items="${listaProduct}">
                <tr>
                    <td><label>${productos.idProducto}</label></td>
                    <td><label>${productos.nombreProducto}</label></td>
                    <td><label>${productos.precioProductoMini}</label></td>
                    <td><label>${productos.precioProductoIndividual}</label></td>
                    <td><label>${productos.precioProductoChica}</label></td>
                    <td><label>${productos.precioProductoMediana}</label></td>
                    <td><label>${productos.precioProductoGrande}</label></td>
                    <td><label>${productos.precioProductoFamiliar}</label></td>
                    <td><label>${productos.diferenciadosProducto}</label></td>

                </tr>
            </c:forEach>
            <!--<tr>
                <td>
                    <form action="/pizzasgourmetdeli/ControladorProductos" method="POST">      
                        <button type="submit" class="btn btn-primary" name="accion" value="Listar" style="background-color: cyan;">Consultar</button>
                    </form> 
                </td>
            </tr>-->
        </tbody>

    </table>
</body>
</html>
