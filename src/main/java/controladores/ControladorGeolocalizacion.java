/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import datos.SucursalesDAO;
import dominio.EntidadClientes;
import dominio.EntidadSucursales;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "ControladorGeolocalizacion", urlPatterns = {"/ControladorGeolocalizacion"})
public class ControladorGeolocalizacion extends HttpServlet {

    SucursalesDAO objetoSucDAO = new SucursalesDAO();

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
            out.println("<title>Servlet ControladorGeolocalizacion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorGeolocalizacion at " + request.getContextPath() + "</h1>");
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

        String callejson = jsonObject.get("calleservidor").getAsString();
        String numerocasajson = jsonObject.get("numerocasaservidor").getAsString();
        String coloniajson = jsonObject.get("coloniaservidor").getAsString();
        String delegacionjson = jsonObject.get("delegacionservidor").getAsString();
        String ciudadjson = jsonObject.get("ciudadservidor").getAsString();
        String codigoPostaljson = jsonObject.get("codigopostalservidor").getAsString();
        int codigoPostal = 0;
        if (codigoPostaljson != null && !"".equals(codigoPostaljson)) {
            codigoPostal = Integer.parseInt(codigoPostaljson);
        }

        HttpSession sesion = request.getSession(false);
        EntidadClientes objetoClientesAtributes = new EntidadClientes(callejson, numerocasajson, coloniajson, delegacionjson, codigoPostal);
        sesion.setAttribute("clienteatributos", objetoClientesAtributes);
        String pedidoEnvioDomicilio = "pedido enviado a domicilio";
        sesion.setAttribute("formaenviodomicilio", pedidoEnvioDomicilio);
        String pedidoSucursal = "";
        sesion.setAttribute("sucursalpedido", pedidoSucursal);
        
        System.out.println("Pedido solicitado a domicilio: " + pedidoEnvioDomicilio + "pedido a sucursal: " + pedidoSucursal);
        
        
        System.out.println("calle: " + callejson);
        System.out.println("número casa: " + numerocasajson);
        System.out.println("colonia: " + coloniajson);
        System.out.println("delegación: " + delegacionjson);
        System.out.println("ciudad: " + ciudadjson);
        System.out.println("codigo Postal user: " + codigoPostal);

        EntidadSucursales entidadSucursal = objetoSucDAO.validarCodigoPostal(codigoPostal);
        int cp = entidadSucursal.getCodigoPostalSucursal();
        // Procesar la ubicación recibida
        System.out.println("codigo PostalBD: " + cp);//hasta aqui esta bien

        JsonObject jsonResponse = new JsonObject();
        jsonResponse.addProperty("cp", cp);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonResponse.toString());

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
