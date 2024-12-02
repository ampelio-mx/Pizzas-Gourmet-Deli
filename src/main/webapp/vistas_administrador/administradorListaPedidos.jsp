
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="application/vnd.ms-excel" %>

<%

    String nombreArchivo = "Listado_de_Pedidos.xls";
    response.setHeader("Content-Disposition", "attachment;filename=" + nombreArchivo);
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de todos los Pedidos</title>
    </head>
    <body>
        <h1>Listado de todos los Pedidos</h1>

        <table class="table">
            <thead>
                <tr>

                    <th scope="col" style="border: 1px solid red">Id pedido</th>
                    <th scope="col" style="border: 1px solid red">Id session</th>
                    <th scope="col" style="border: 1px solid red">Producto solicitado</th>
                    <th scope="col" style="border: 1px solid red">Cantidad</th>
                    <th scope="col" style="border: 1px solid red">Tamaño producto</th>
                    <th scope="col" style="border: 1px solid red">Precio producto</th>
                    <th scope="col" style="border: 1px solid red">Subtotal por producto</th>
                    <th scope="col" style="border: 1px solid red">Id cliente</th>
                    <th scope="col" style="border: 1px solid red">Fecha/Hora compra</th>
                    <th scope="col" style="border: 1px solid red">Forma de entrega</th>
                </tr>
            </thead>
            <tbody>  

            <c:forEach var="pedido" items="${listaPedidos}">
                <tr>
                    <td><label>${pedido.idPedidos}</label></td>
                    <td><label>${pedido.idSession}</label></td>
                    <td><label>${pedido.nombreProductoPedidos}</label></td>
                    <td><label>${pedido.cantidadPedidos}</label></td>
                    <td><label>${pedido.tamanoPedidos}</label></td>
                    <td><label>${pedido.costoIndividual}</label></td>
                    <td><label>${pedido.importePedidos}</label></td>
                    <td><label>${pedido.idCliente}</label></td>
                    <td><label>${pedido.fechaPedido}</label></td>
                    <td><label>${pedido.formaEntrega}</label></td>
                

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
