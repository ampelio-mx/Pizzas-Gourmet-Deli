
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="application/vnd.ms-excel" %>

<%

    String nombreArchivo = "Listado_de_Clientes.xls";
    response.setHeader("Content-Disposition", "attachment;filename=" + nombreArchivo);
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de todos los clientes</title>
    </head>
    <body>
        <h1>Listado de todos los clientes</h1>

        <table class="table">
            <thead>
                <tr>

                    <th scope="col">Id Cliente</th>
                    <th scope="col">Nombre o nick name</th>
                    <th scope="col">Calle</th>
                    <th scope="col">Número exterior</th>
                    <th scope="col">Número interior</th>
                    <th scope="col">Colonia</th>
                    <th scope="col">Delegación</th>
                    <th scope="col">Código postal</th>
                    <th scope="col">Teléfono</th>
                    <th scope="col">e mail</th>
                </tr>
            </thead>
            <tbody>  

            <c:forEach var="clientes" items="${listaDeClientes}">
                <tr>
                    <td><label>${clientes.userIdCliente}</label></td>
                    <td><label>${clientes.nombre}</label></td>
                    <td><label>${clientes.calle}</label></td>
                    <td><label>${clientes.numeroExterior}</label></td>
                    <td><label>${clientes.numeroInterior}</label></td>
                    <td><label>${clientes.colonia}</label></td>
                    <td><label>${clientes.delegacion}</label></td>
                    <td><label>${clientes.codigoPostal}</label></td>
                    <td><label>${clientes.telefono}</label></td>
                    <td><label>${clientes.eMail}</label></td>

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
