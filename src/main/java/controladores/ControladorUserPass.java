/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import datos.PasswordDAO;
import dominio.EntidadClientes;
import dominio.EntidadPassword;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorUserPass", urlPatterns = {"/ControladorUserPass"})
public class ControladorUserPass extends HttpServlet {

    public static final String SQL_REGISTRARSE = "Registrarse";
    public static final String SQL_REGISTRAR_USUARIO_NUEVO = "RegistrarUsuario";

    PasswordDAO pD = new PasswordDAO();

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
            out.println("<title>Servlet ControladorUserPass</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorUserPass at " + request.getContextPath() + "</h1>");
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

        String action = request.getParameter("accion");

        switch (action) {

            case SQL_REGISTRARSE:

                response.sendRedirect("vistas/registrarseUser.jsp");
                break;

            case SQL_REGISTRAR_USUARIO_NUEVO:

                HttpSession sesionRecuperarDatosInicio = request.getSession(false);
                EntidadClientes entidadClienteInicio = (EntidadClientes) sesionRecuperarDatosInicio.getAttribute("clienteatributos");

                if (entidadClienteInicio != null) {
                    String usuario = request.getParameter("mail-form-user");
                    String contrasenia = request.getParameter("password-form-user");
                    String pN = request.getParameter("name-form-user");                     
                    
                    String calle = "";
                    String calleEnviadaInicio = entidadClienteInicio.getCalle();
                    if (calleEnviadaInicio != null && !"".equals(calleEnviadaInicio) && !calleEnviadaInicio.isEmpty()) {
                        calle = calleEnviadaInicio;
                    }
                    String nE = "";
                    String nEEnviadoInicio = entidadClienteInicio.getNumeroExterior();
                    if (nEEnviadoInicio != null && !"".equals(nEEnviadoInicio) && !nEEnviadoInicio.isEmpty()) {
                        nE = nEEnviadoInicio;
                    }
                    String nI = "";
                    String colonia = "";
                    String coloniaEnviadaInicio = entidadClienteInicio.getColonia();
                    if (coloniaEnviadaInicio != null && !"".equals(coloniaEnviadaInicio) && !coloniaEnviadaInicio.isEmpty()) {
                        colonia = coloniaEnviadaInicio;
                    }
                    String delegacion = "";
                    String delegacionEnviadaInicio = entidadClienteInicio.getDelegacion();
                    if (delegacionEnviadaInicio != null && !"".equals(delegacionEnviadaInicio) && !delegacionEnviadaInicio.isEmpty()) {
                        delegacion = delegacionEnviadaInicio;
                    }
                    int cP = entidadClienteInicio.getCodigoPostal();
                    
                    long telefono = 0;
                    String telefonoString = request.getParameter("celphone-form-user");
                    if (telefonoString != null && !"".equals(telefonoString)) {
                        telefono = Long.parseLong(telefonoString);
                    }
                    String eMail = usuario;
                    
                    System.out.println("Datos registrados por el cliente:" + "usuario: " + usuario + "nombre: " + pN + "calle: " + calle + "número exterior: " + nE + "número interior: " + nI + "delegación: " + delegacion + "código postal: " + cP + "teléfono: " + telefono + "e mail: " + eMail );
                    
                    entidadClienteInicio.setUserIdCliente(usuario);
                    entidadClienteInicio.setPassword(contrasenia);
                    entidadClienteInicio.setNombre(pN);
                    entidadClienteInicio.setCalle(calle);
                    entidadClienteInicio.setNumeroExterior(nE);
                    entidadClienteInicio.setNumeroInterior(nI);
                    entidadClienteInicio.setColonia(colonia);
                    entidadClienteInicio.setDelegacion(delegacion);
                    entidadClienteInicio.setCodigoPostal(cP);
                    entidadClienteInicio.setTelefono(telefono);
                    entidadClienteInicio.seteMail(eMail);

                    int insertados = pD.crearUserPass(entidadClienteInicio);
                    response.sendRedirect("vistas/userLogin.jsp");
                } else if(entidadClienteInicio == null){
                    
                    String usuario = request.getParameter("mail-form-user");
                    String contrasenia = request.getParameter("password-form-user");
                    String pN = request.getParameter("name-form-user"); 
                    String calle = "";
                    String nE = "";
                    String nI = "";
                    String colonia = "";
                    String delegacion = "";
                    int cP = 0;                    
                    long telefono = 0;
                    String telefonoString = request.getParameter("celphone-form-user");
                    if (telefonoString != null && !"".equals(telefonoString)) {
                        telefono = Long.parseLong(telefonoString);
                    }
                    System.out.println("Teléfono"+ telefono + "Telefóno string" + telefonoString);
                    String eMail = usuario;

                    EntidadClientes clientePickUp = new EntidadClientes(usuario,contrasenia,pN,calle,nE,nI,colonia,delegacion,cP,telefono,eMail);
                    int insertados = pD.crearUserPass(clientePickUp);
                    response.sendRedirect("vistas/userLogin.jsp");
                }

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
