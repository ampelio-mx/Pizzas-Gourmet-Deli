/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import datos.PedidosDAO;
import dominio.EntidadPedidos;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
@WebServlet(name = "ControladorDeliveryRedireccion", urlPatterns = {"/ControladorDeliveryRedireccion"})
public class ControladorDeliveryRedireccion extends HttpServlet {

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
            out.println("<title>Servlet ControladorDeliveryRedireccion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorDeliveryRedireccion at " + request.getContextPath() + "</h1>");
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

        /*JSON DESDE FETCH*/
        BufferedReader reader = request.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        String json = sb.toString();
        // Convertir los parámetros JSON en un objeto Java
        JsonObject jsonObject = JsonParser.parseString(json).getAsJsonObject();

        String tipoEnvio = jsonObject.get("tipoEnvio").getAsString();

        EntidadPedidos entidadPedido = new EntidadPedidos();
        PedidosDAO entidadPedidoDAO = new PedidosDAO();
        HttpSession sesion = request.getSession();
        String idSession = sesion.getId();

        String productName = "";
        int productQuantity = 0;
        String size = "";
        double price = 0.0;
        double amount = 0.0;

        entidadPedido.setIdSession(idSession);
        entidadPedido.setNombreProductoPedidos(productName);
        entidadPedido.setCantidadPedidos(productQuantity);
        entidadPedido.setTamanoPedidos(size);
        entidadPedido.setCostoIndividual(price);
        entidadPedido.setImportePedidos(amount);

        if ("rappi".equals(tipoEnvio)) {

            String envioRappi = "";
            String envioRappiJSon = jsonObject.get("envioRappiVarFetch").getAsString();
            if (envioRappiJSon != null && !"".equals(envioRappiJSon) && !envioRappiJSon.isEmpty()) {
                envioRappi = envioRappiJSon;
            }

            String insertarEnvioRappi = "";
            String insertarEnvioRappiJSon = jsonObject.get("insertarEnviorappiVarFetch").getAsString();
            if (insertarEnvioRappiJSon != null && !"".equals(insertarEnvioRappiJSon) && !insertarEnvioRappiJSon.isEmpty()) {
                insertarEnvioRappi = insertarEnvioRappiJSon;
            }

            String idCliente = insertarEnvioRappi;
            entidadPedido.setIdCliente(idCliente);
            entidadPedidoDAO.insertarTodosValores(entidadPedido);
            System.out.println(insertarEnvioRappi);
            
             JsonObject jsonResponse = new JsonObject();
            jsonResponse.addProperty("dataRappi", insertarEnvioRappiJSon);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse.toString());
             sesion.invalidate();

        }
        
        if ("uberEats".equals(tipoEnvio)) {

            String envioUberEats = "";
            String envioUberEatsJSon = jsonObject.get("envioUberEatdsVarFetch").getAsString();
            if (envioUberEatsJSon != null && !"".equals(envioUberEatsJSon) && !envioUberEatsJSon.isEmpty()) {
                envioUberEats = envioUberEatsJSon;
            }

            String insertarEnvioUberEats = "";
            String insertarEnvioUberEatsJSon = jsonObject.get("insertarEnvioUberEatsVarFetch").getAsString();
            if (insertarEnvioUberEatsJSon != null && !"".equals(insertarEnvioUberEatsJSon) && !insertarEnvioUberEatsJSon.isEmpty()) {
                insertarEnvioUberEats = insertarEnvioUberEatsJSon;

            }

                String idCliente = insertarEnvioUberEats;
                entidadPedido.setIdCliente(idCliente);
                entidadPedidoDAO.insertarTodosValores(entidadPedido);
                System.out.println(insertarEnvioUberEats);
            
               
            JsonObject jsonResponse = new JsonObject();
            jsonResponse.addProperty("dataUberEats", insertarEnvioUberEatsJSon);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse.toString());
             sesion.invalidate();
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
