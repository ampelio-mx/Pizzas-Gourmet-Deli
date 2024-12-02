/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import datos.PedidosDAO;
import dominio.EntidadClientes;
import dominio.EntidadPedidos;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ampelio
 */
@WebServlet(name = "ControladorGuardarPedidoEfectivoTerminal", urlPatterns = {"/ControladorGuardarPedidoEfectivoTerminal"})
public class ControladorGuardarPedidoEfectivoTerminal extends HttpServlet {

    PedidosDAO pedidosDAO = new PedidosDAO();
    public static final String PAGO_MOSTRADOR = "pagomostrador";

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
            out.println("<title>Servlet ControladorGuardarPedidoEfectivoTerminal</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorGuardarPedidoEfectivoTerminal at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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

        String accion = request.getParameter("accion");

        switch (accion) {

            case PAGO_MOSTRADOR:

                HttpSession sesion3 = request.getSession();
                String idSesion3 = sesion3.getId();
                String idClien = (String) sesion3.getAttribute("idUser");
                String sucursalEnvio = (String) sesion3.getAttribute("sucursalpedido");
                System.out.println("Sucursal de envío: " + sucursalEnvio);
                String formaEnvioDomicilio = (String) sesion3.getAttribute("formaenviodomicilio");
                System.out.println("Envío a domicilio: " + formaEnvioDomicilio);
                String formaEntrega = "";

                if (sucursalEnvio != null && !"".equals(sucursalEnvio)) {
                    formaEntrega = sucursalEnvio;
                } else if (formaEnvioDomicilio != null && !"".equals(formaEnvioDomicilio)) {
                    formaEntrega = formaEnvioDomicilio;
                }
                
                EntidadClientes c = new EntidadClientes(idClien);
                EntidadPedidos p = new EntidadPedidos(idSesion3);
                p.setFormaEntrega(formaEntrega);
                pedidosDAO.actualizarIdFK(c, p);

                EntidadPedidos pedidoListas = new EntidadPedidos(idSesion3);
                List<EntidadPedidos> listasPedidos = pedidosDAO.listarPedidosCliente(pedidoListas);

                

                System.out.print("Botón pago en mostrador");
                StringBuilder mensajeBuilder = new StringBuilder("Lista de pedidos:\n");

                for (EntidadPedidos pedido : listasPedidos) {
                    String nombreProducto = pedido.getNombreProductoPedidos();
                    mensajeBuilder.append("- ").append(nombreProducto).append("\n"); 
                    int cantidadProductos = pedido.getCantidadPedidos();
                    mensajeBuilder.append("- ").append(cantidadProductos).append("\n");
                    String tamanioProducto = pedido.getTamanoPedidos();
                    mensajeBuilder.append("- ").append(tamanioProducto).append("\n");
                    mensajeBuilder.append("- ").append(formaEntrega).append("\n"); // Agregar la forma de entrega al mensaje
                }

                String mensaje = mensajeBuilder.toString();
                String urlWhatsApp = "https://wa.me/525584586043?text=" + URLEncoder.encode(mensaje, "UTF-8");
                response.sendRedirect(urlWhatsApp);
                sesion3.invalidate();
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
