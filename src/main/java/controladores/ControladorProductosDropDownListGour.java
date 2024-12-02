/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import datos.ProductosDAO;
import dominio.EntidadProductos;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ampelio
 */
@MultipartConfig
@WebServlet(name = "ControladorProductosDropDownListGour", urlPatterns = {"/ControladorProductosDropDownListGour"})
public class ControladorProductosDropDownListGour extends HttpServlet {

    ProductosDAO objProducDAO = new ProductosDAO();

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
            out.println("<title>Servlet ControladorProductosDropDownList</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProductosDropDownList at " + request.getContextPath() + "</h1>");
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
        
        //
        BufferedReader reader = request.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        String json = sb.toString();

        // Convertir los parámetros JSON en un objeto Java
        JsonObject jsonObject = JsonParser.parseString(json).getAsJsonObject();
        String selectedId = jsonObject.get("selectedId").getAsString();
        String selectedOption = jsonObject.get("selectedOption").getAsString();

        int idPizza = 0;
        if (selectedId != null && !"".equals(selectedId)) {
            idPizza = Integer.parseInt(selectedId);
        }

        EntidadProductos objEntProduct = new EntidadProductos(idPizza);
        objProducDAO.listarPizzaPorId(objEntProduct);

        String nombreProducto = objEntProduct.getNombreProducto();
        Double precioPizzaMini = objEntProduct.getPrecioProductoMini();
        Double precioPizzaIndividual = objEntProduct.getPrecioProductoIndividual();
        Double precioPizzaChica = objEntProduct.getPrecioProductoChica();
        Double precioPizzaMediana = objEntProduct.getPrecioProductoMediana();
        Double precioPizzaGrande = objEntProduct.getPrecioProductoGrande();
        Double precioPizzaFamiliar = objEntProduct.getPrecioProductoFamiliar();

        String redirecUrl;
        
            switch (selectedOption) {

                case "preciomini":
                    String mini = "Mini";
                    redirecUrl = "pizzas_gourmet.jsp?precioproductselected=" + precioPizzaMini + "&nameproduct=" + nombreProducto + "&tamanioproduct=" + mini + "&formularioselected=" + URLEncoder.encode(selectedId, "UTF-8");
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("{\"redirectUrl\": \"" + redirecUrl + "\"}");
                    break;
                case "precioindi":
                    String individual = "Individual";
                    redirecUrl = "pizzas_gourmet.jsp?precioproductselected=" + precioPizzaIndividual + "&nameproduct=" + nombreProducto + "&tamanioproduct=" + individual + "&formularioselected=" + URLEncoder.encode(selectedId, "UTF-8");
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("{\"redirectUrl\": \"" + redirecUrl + "\"}");
                    break;
                case "preciochica":
                    String chica = "Chica";
                    redirecUrl = "pizzas_gourmet.jsp?precioproductselected=" + precioPizzaChica + "&nameproduct=" + nombreProducto + "&tamanioproduct=" + chica + "&formularioselected=" + URLEncoder.encode(selectedId, "UTF-8");
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("{\"redirectUrl\": \"" + redirecUrl + "\"}");
                    break;
                case "preciomediana":
                    String mediana = "Mediana";
                    redirecUrl = "pizzas_gourmet.jsp?precioproductselected=" + precioPizzaMediana + "&nameproduct=" + nombreProducto + "&tamanioproduct=" + mediana + "&formularioselected=" + URLEncoder.encode(selectedId, "UTF-8");
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("{\"redirectUrl\": \"" + redirecUrl + "\"}");
                    break;  
                case "preciogrande":
                    String grande = "Grande";
                    redirecUrl = "pizzas_gourmet.jsp?precioproductselected=" + precioPizzaGrande + "&nameproduct=" + nombreProducto + "&tamanioproduct=" + grande + "&formularioselected=" + URLEncoder.encode(selectedId, "UTF-8");
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("{\"redirectUrl\": \"" + redirecUrl + "\"}");
                    break;
                case "preciofamiliar":
                    String familiar = "Familiar";
                    redirecUrl = "pizzas_gourmet.jsp?precioproductselected=" + precioPizzaFamiliar + "&nameproduct=" + nombreProducto + "&tamanioproduct=" + familiar + "&formularioselected=" + URLEncoder.encode(selectedId, "UTF-8");
                    response.setContentType("precioproductselected/json");
                    response.setCharacterEncoding("UTF-8");
                    response.getWriter().write("{\"redirectUrl\": \"" + redirecUrl + "\"}");
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
