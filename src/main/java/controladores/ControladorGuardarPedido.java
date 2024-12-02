/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import datos.PedidosDAO;
import dominio.EntidadClientes;
import dominio.EntidadPedidos;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/**
 *
 * @author Ampelio
 */
@WebServlet(name = "ControladorGuardarPedido", urlPatterns = {"/ControladorGuardarPedido"})
public class ControladorGuardarPedido extends HttpServlet {

    PedidosDAO pedidosDAO = new PedidosDAO();

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
            out.println("<title>Servlet ControladorGuardarPedido</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorGuardarPedido at " + request.getContextPath() + "</h1>");
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

        BufferedReader reader = request.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        String json = sb.toString();
        // Convertir los parámetros JSON en un objeto Java
        JsonObject jsonObject = JsonParser.parseString(json).getAsJsonObject();

        String guardarDatos = jsonObject.get("guardarPedido").getAsString();

        if ("actualizarfk".equals(guardarDatos)) {

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

            // Procesar la solicitud y obtener la lista de pedidos
            EntidadPedidos pedidoListas = new EntidadPedidos(idSesion3);
            List<EntidadPedidos> listasPedidos = pedidosDAO.listarPedidosCliente(pedidoListas);

          
// Crear un arreglo JSON para almacenar los datos de los pedidos
            JsonArray jsonArrayPedidos = new JsonArray();

// Iterar sobre la lista de pedidos y agregar los datos al arreglo JSON
            for (EntidadPedidos pedido : listasPedidos) {
                JsonObject jsonPedido = new JsonObject();
                jsonPedido.addProperty("nombreProducto", pedido.getNombreProductoPedidos());
                jsonPedido.addProperty("cantidadProductos", pedido.getCantidadPedidos());
                jsonPedido.addProperty("tamanioProducto", pedido.getTamanoPedidos());
                jsonPedido.addProperty("entregaProducto", formaEntrega);                
                jsonArrayPedidos.add(jsonPedido);
            }

// Construir el objeto JSON de respuesta
            JsonObject jsonResponse = new JsonObject();
            jsonResponse.addProperty("mensajeRespuesta", "Datos almacenados correctamente");
            jsonResponse.add("pedidos", jsonArrayPedidos);

// Establecer el tipo de contenido de la respuesta como "application/json"
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

// Escribir el objeto JSON en el cuerpo de la respuesta y enviarlo de vuelta al cliente
            response.getWriter().write(jsonResponse.toString());
            sesion3.invalidate();
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
