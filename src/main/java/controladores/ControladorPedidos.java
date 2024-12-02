/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import datos.ClientesDAO;
import datos.PedidosDAO;
import datos.ProductosDAO;
import dominio.EntidadClientes;
import dominio.EntidadPedidos;
import dominio.EntidadProductos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ampelio
 */
@MultipartConfig
@WebServlet(name = "ControladorPedidos", urlPatterns = {"/ControladorPedidos"})
public class ControladorPedidos extends HttpServlet {

    PedidosDAO pedidosDAO = new PedidosDAO();
    ProductosDAO productosDAO = new ProductosDAO();
    ClientesDAO clienteDAO = new ClientesDAO();
    EntidadPedidos entidadPedido = new EntidadPedidos();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorPedidos</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorPedidos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //parámetros desde la URL
        String accion = request.getParameter("accion");

        switch (accion) {

            case "accionPizzas":

                //insertar en tabla pedidos desde los diferentes productos
                int idPizzas = 0;
                String idPizzaString = request.getParameter("idpizza");
                if (idPizzaString != null && !"".equals(idPizzaString)) {
                    idPizzas = Integer.parseInt(idPizzaString);
                }

                //String nombrePizza = request.getParameter("nombrepizza");
                int cantidadPizzas = 0;
                String cantidadPizzasString = request.getParameter("cantidadpizzas");
                if (cantidadPizzasString != null && !"".equals(cantidadPizzasString)) {
                    cantidadPizzas = Integer.parseInt(cantidadPizzasString);
                }

                String tamanioPizza = request.getParameter("tamaniopizza");

                double precioIndividual = 0;
                String precioIndividualString = request.getParameter("precioindividual");
                if (precioIndividualString != null && !"".equals(precioIndividualString)) {
                    precioIndividual = Double.parseDouble(precioIndividualString);
                }

                double subtotalPizzas = 0;
                String subtotalPizzasString = request.getParameter("subtotal");
                if (subtotalPizzasString != null && !"".equals(subtotalPizzasString)) {
                    subtotalPizzas = Double.parseDouble(subtotalPizzasString);
                }

                //consulta a la base de datos para obtener nombre y diferenciador
                EntidadProductos producto = new EntidadProductos(idPizzas);
                productosDAO.listarPizzaPorId(producto);
                String nombrePizza = producto.getNombreProducto();
                int diferenciador = producto.getDiferenciadosProducto();

                //obtener el id session
                HttpSession sesion = request.getSession();
                String idSesion = sesion.getId();

                //insertar datos en tabla pedidos                
                EntidadPedidos pedido = new EntidadPedidos(idSesion, nombrePizza, cantidadPizzas, tamanioPizza, precioIndividual, subtotalPizzas);
                pedidosDAO.insertar(pedido);

                //recuperar tamano de lista
                EntidadPedidos pedidoListas = new EntidadPedidos(idSesion);
                List<EntidadPedidos> listasPedidos = pedidosDAO.listarPedidosCliente(pedidoListas);

                int totalProductos = 0;
                for (EntidadPedidos pedidoP : listasPedidos) {
                    totalProductos += pedidoP.getCantidadPedidos();
                }

                // int cantidadProductos = listasPedidos.size();  ***por
                sesion.setAttribute("cantProduct", totalProductos);

                if (idPizzas == 1001 || idPizzas == 1002 || idPizzas == 1003 || idPizzas == 1004) {
                    response.sendRedirect("vistas/pizzas_tradi_uno.jsp");
                } else if (idPizzas == 1005 || idPizzas == 1006 || idPizzas == 1007 || idPizzas == 1008) {
                    response.sendRedirect("vistas/pizzas_tradi_dos.jsp");
                } else if (idPizzas == 1009 || idPizzas == 1010 || idPizzas == 1011 || idPizzas == 1012) {
                    response.sendRedirect("vistas/pizzas_tradi_tres.jsp");
                } else if (idPizzas == 1013 || idPizzas == 1014 || idPizzas == 1015) {
                    response.sendRedirect("vistas/pizzas_tradi_cuatro.jsp");
                } else if (idPizzas == 2001 || idPizzas == 2002 || idPizzas == 2003 || idPizzas == 2004) {
                    response.sendRedirect("vistas/pizzas_gour_uno.jsp");
                }  else if (idPizzas == 2005 || idPizzas == 2006 || idPizzas == 2007 || idPizzas == 2008) {
                    response.sendRedirect("vistas/pizzas_gour_dos.jsp");
                } else if (idPizzas == 2009 || idPizzas == 2010 || idPizzas == 2011 || idPizzas == 2012) {
                    response.sendRedirect("vistas/pizzas_gour_tres.jsp");
                }  else if (idPizzas == 2013 || idPizzas == 2014 || idPizzas == 2015 || idPizzas == 2016) {
                    response.sendRedirect("vistas/pizzas_gour_cuatro.jsp"); 
                } else if (idPizzas == 3001 || idPizzas == 3002 || idPizzas == 3003 || idPizzas == 3004) {
                    response.sendRedirect("vistas/pizzas_bebidas_uno.jsp");
                } else if (idPizzas == 3005 || idPizzas == 3006 || idPizzas == 3007 || idPizzas == 3008) {
                    response.sendRedirect("vistas/pizzas_bebidas_dos.jsp");
                } else if (idPizzas == 5001 || idPizzas == 5002 || idPizzas == 5003 || idPizzas == 5004) {
                    response.sendRedirect("vistas/pizzas_antojitos_uno.jsp");
                }

                //recuperar lista de pedidos
                break;

            case "accionmenu":

                //id session
                HttpSession sesion2 = request.getSession();
                String idSesion2 = sesion2.getId();

                //recuperar lista de pedidos
                EntidadPedidos pedidoLista = new EntidadPedidos(idSesion2);
                List<EntidadPedidos> listaPedidos = pedidosDAO.listarPedidosCliente(pedidoLista);

                double subTotalProductos = 0;
                for (EntidadPedidos pedidoPe : listaPedidos) {

                    subTotalProductos += pedidoPe.getImportePedidos();
                }

                sesion2.setAttribute("subTotal", subTotalProductos);
                System.out.println("Total de productos" + subTotalProductos);
                sesion2.setAttribute("listaProductosPedidos", listaPedidos);
                //request.setAttribute("listaProductosPedidos", listaPedidos);
                response.sendRedirect("vistas/carrito.jsp");

                break;

            case "accioneliminarpedido":

                String idPedido = request.getParameter("idpedido");
                int idPedidoInt = Integer.parseInt(idPedido);

                System.out.println("Id del pedido" + idPedido);

                EntidadPedidos pedidoEliminar = new EntidadPedidos(idPedidoInt);
                int pedidoEliminado = pedidosDAO.eliminarPedidoPorId(pedidoEliminar);
                response.sendRedirect("/ControladorPedidos?accion=accionmenu");
                break;

            default:

                response.sendRedirect("index.jsp");

                break;

        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String formularioListaBotonesSeleccionado = request.getParameter("formulario-listaradio");

        switch (formularioListaBotonesSeleccionado) {

            case "ListarTodosPedidos":

                List<EntidadPedidos> listaTodosPedidos = pedidosDAO.listarTodosPedidos();
                HttpSession session = request.getSession();
                session.setAttribute("listaPedidos", listaTodosPedidos);
                response.sendRedirect("vistas_administrador/administradorListaPedidos.jsp");
                break;

            case "ListarPedidoUser":

                String nombreUsuario = request.getParameter("idCliente");
                System.out.println("El nombre del cliente es: " + nombreUsuario);
                EntidadPedidos pedido = new EntidadPedidos();
                pedido.setIdCliente(nombreUsuario);
                List<EntidadPedidos> listaPedidosCliente = pedidosDAO.listarPedidosUser(pedido);
               
                EntidadClientes cliente = new EntidadClientes(nombreUsuario);
                clienteDAO.listarClientePedido(cliente);
               
                
                HttpSession session2 = request.getSession();
                session2.setAttribute("listaPedidos", listaPedidosCliente);
                session2.setAttribute("domiciliocliente", cliente);
                response.sendRedirect("vistas_administrador/administradorPedidos.jsp");
                break;

             case "formulariolistaradio1":
                String idPizza = request.getParameter("opcion_seleccionada_formulario");
                int idPizzaInt = Integer.parseInt(idPizza);
                
                String tamanioPizzaVacia = "n/a";
                String tamanioPizza = request.getParameter("opcion_radioboton");
                if (tamanioPizza == null || "".equals(tamanioPizza)) {
                    tamanioPizza = tamanioPizzaVacia;
                }
                System.out.println("La pizza seleccionada es " + idPizza + "el tamaño seleccionado es " + tamanioPizza);
                System.out.println("La pizza seleccionada es " + idPizzaInt);
                
                EntidadProductos producto = new EntidadProductos(idPizzaInt);
                productosDAO.listarPizzaPorId(producto);
                String nombrePizza = producto.getNombreProducto();
                double precioMini = producto.getPrecioProductoMini();
                double precioIndividual = producto.getPrecioProductoIndividual();
                double precioChica = producto.getPrecioProductoChica();
                double precioMediana = producto.getPrecioProductoMediana();
                double precioGrande = producto.getPrecioProductoGrande();
                double precioFamiliar = producto.getPrecioProductoFamiliar();
                double precioBebidas = producto.getPrecioBebidas();
                double precioAntojitos = producto.getPrecioExtras();

                double precioTamanioSeleccionado = 0;
                if (tamanioPizza.equals("mini")) {
                    precioTamanioSeleccionado = precioMini;
                } else if (tamanioPizza.equals("individual")) {
                    precioTamanioSeleccionado = precioIndividual;
                } else if (tamanioPizza.equals("chica")) {
                    precioTamanioSeleccionado = precioChica;
                } else if (tamanioPizza.equals("mediana")) {
                    precioTamanioSeleccionado = precioMediana;
                } else if (tamanioPizza.equals("grande")) {
                    precioTamanioSeleccionado = precioGrande;
                } else if (tamanioPizza.equals("familiar")) {
                    precioTamanioSeleccionado = precioFamiliar;
                } else if (idPizzaInt == 3001 || idPizzaInt == 3002 || idPizzaInt == 3003 || idPizzaInt == 3004 || idPizzaInt == 3005 || idPizzaInt == 3006 || idPizzaInt == 3007 || idPizzaInt == 3008) {
                    precioTamanioSeleccionado = precioBebidas;
                } else if (idPizzaInt == 5001 || idPizzaInt == 5002 || idPizzaInt == 5003 || idPizzaInt == 5004) {
                    precioTamanioSeleccionado = precioAntojitos;
                }

                int diferenciador = producto.getDiferenciadosProducto();

                int cantidad = 0;
                String cantidadString = request.getParameter("cantidadproductos");
                if (cantidadString != null && !"".equals(cantidadString)) {
                    cantidad = Integer.parseInt(cantidadString);
                }

                double cantidadDouble = (double) cantidad;
                double importe = cantidadDouble * precioTamanioSeleccionado;

                String idUsuario = "administrador";

                HttpSession sesion = request.getSession();
                String idSesion = sesion.getId();

                long horaCreacion = sesion.getCreationTime();
                long horaAcceso = sesion.getLastAccessedTime();

                System.out.print("El id de la sesión es : " + idSesion);
                System.out.print("La hora de creación fue: " + horaCreacion);
                System.out.print("La última hora de acceso fue: " + horaAcceso);

                EntidadPedidos pedidoAdmin = new EntidadPedidos(idSesion, nombrePizza, cantidad, tamanioPizza, precioTamanioSeleccionado, importe);
                pedidosDAO.insertar(pedidoAdmin);

                String userName = (String) sesion.getAttribute("usuario");
                System.out.print("Usuario en sesión: " + userName);

                EntidadClientes c = new EntidadClientes();
                c.setUserIdCliente(userName);
                EntidadPedidos p = new EntidadPedidos();
                p.setIdSession(idSesion);

                pedidosDAO.actualizarIdFK(c, p);

                response.sendRedirect("vistas_administrador/administradorPedidos.jsp");

                break;
                
            case "formulariolistaradio2":

                String nombrePizza2 = request.getParameter("opcion_seleccionada_formulario");
                String tamanioPizza2 = request.getParameter("opcion_radioboton");
                System.out.println("La pizza seleccionada es " + nombrePizza2 + "el tamaño seleccionado es " + tamanioPizza2);
                break;

            default:
                response.sendRedirect("index.jsp");
                break;

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
