/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import datos.SucursalesDAO;
import dominio.EntidadClientes;
import dominio.EntidadSucursales;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ampelio
 */
public class ControladorSucursales extends HttpServlet {

    SucursalesDAO sucDAO = new SucursalesDAO();

    public static final String ENVIAR_CODIGO_POSTAL = "enviarcodigopostal";
    public static final String ENVIAR_DOMICILIO_IZTACALCO = "solicituddomicilioiztacalco";
    public static final String ENVIAR_DOMICILIO_VIADUCTO = "solicituddomicilioviaducto";
    public static final String INICIAR_SESION = "Iniciar Sesión";
    public static final String FINALIZAR_SESION = "Finalizar Sesión";

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
            out.println("<title>Servlet ControladorSucursales</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorSucursales at " + request.getContextPath() + "</h1>");
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
        String pedidoEnvioDomicilio = "";
        
        switch (accion) {

            case ENVIAR_DOMICILIO_IZTACALCO:

                HttpSession sesionSucEnvioIztacalco = request.getSession();
                String idSession = sesionSucEnvioIztacalco.getId();
                String pedidoSucIztacalco = "pedidoenviadoiztacalco";                
                sesionSucEnvioIztacalco.setAttribute("sucursalpedido", pedidoSucIztacalco);                
                sesionSucEnvioIztacalco.setAttribute("formaenviodomicilio", pedidoEnvioDomicilio);
                System.out.println("Id Sesión: " + idSession);
                System.out.println("Solicitud de pedido a sucursal: " + pedidoSucIztacalco + "formaenviodomicilio" + pedidoEnvioDomicilio);
                response.sendRedirect("/ControladorProductosListar");
                break;

            case ENVIAR_DOMICILIO_VIADUCTO:

                HttpSession sesionSucEnvioViaducto = request.getSession();
                String pedidoSucViaducto = "pedidoenviadoviaducto";
                System.out.println("Solicitud de pedido a sucursal: " + pedidoSucViaducto);
                sesionSucEnvioViaducto.setAttribute("sucursalpedido", pedidoSucViaducto);              
                sesionSucEnvioViaducto.setAttribute("formaenviodomicilio", pedidoEnvioDomicilio);
                System.out.println("formaenviodomicilio" + pedidoEnvioDomicilio);
                response.sendRedirect("/ControladorProductosListar");
                break;

            //LÓGICA PARA VALIDAR CÓDIGO POSTAL DEL CLIENTE Y REDIRECCIONAR SEGÚN CORRESPONDA
            case ENVIAR_CODIGO_POSTAL:
                int codigoPostal = 0;
                String codigoPostalString = request.getParameter("codigopostal");
                if (codigoPostalString != null && !"".equals(codigoPostalString)) {
                    codigoPostal = Integer.parseInt(codigoPostalString);
                }

                List<EntidadSucursales> listaSucursales = sucDAO.listarTodasSucursales();

                boolean encontrado = false;
                //boolean encontrada = false;
                for (EntidadSucursales sucursal : listaSucursales) {

                    int idSuc = sucursal.getIdSucurdal();
                    String nombreSuc = sucursal.getNombreSucursal();
                    int cpSuc = sucursal.getCodigoPostalSucursal();
                    String adminUser = sucursal.getAdminUser();
                    String adminPassword = sucursal.getAdminPassword();

                    if (codigoPostal == cpSuc) {

                        encontrado = true;
                        response.sendRedirect("/ControladorProductosListar");
                        break;

                    }
                }

                if (!encontrado) {
                    response.sendRedirect("index.jsp");
                }

            //LÓGICA PARA VALIDAR CÓDIGO POSTAL DEL CLIENTE Y REDIRECCIONAR SEGÚN CORRESPONDA
            case INICIAR_SESION:

                HttpSession sesion = request.getSession();

                String usuario = request.getParameter("usuario");
                String contrasena = request.getParameter("contrasena");

                if (usuario == null || usuario.isEmpty() || contrasena == null || contrasena.isEmpty()) { //campos de formulario vaciós ok
                    String limpiarCampo = "";
                    sesion.setAttribute("formularioAdminDatosIncorrectos", limpiarCampo);
                    String campoVacio = "Favor de proporcionar usuario y/o contraseña";
                    sesion.setAttribute("formularioAdminDatosIncorrectos", campoVacio);
                    response.sendRedirect("vistas_administrador/administradorLogin.jsp");
                    break;
                }

                //
                EntidadSucursales administradorPassUser = sucDAO.validarPassAdmin(usuario);

                String adminUserId = administradorPassUser.getAdminUser();

                if (!usuario.isEmpty() && adminUserId == null || adminUserId.isEmpty()) { // usuario no registrado 
                    String limpiarCampo = "";
                    sesion.setAttribute("formularioAdminDatosIncorrectos", limpiarCampo);
                    String emptyUser = "usuario incorrecto o no registrado";
                    sesion.setAttribute("formularioAdminDatosIncorrectos", emptyUser);
                    response.sendRedirect("vistas_administrador/administradorLogin.jsp");
                    break;
                }

                //listar por id para saber si existe, si no existe redireccionar con mensaje, si sí, continuar flujo
                EntidadSucursales adminPass = new EntidadSucursales();
                adminPass = sucDAO.validarPass(usuario, contrasena);

                String user = adminPass.getAdminUser();
                String password = adminPass.getAdminPassword();

                if (usuario.equals(user) && contrasena.equals(password)) { //usuario y contraseña correctos ok 

                    HttpSession iniciarSesionAdmin = request.getSession();
                    String sesionId = iniciarSesionAdmin.getId();
                    System.out.println(sesionId);
                    iniciarSesionAdmin.setAttribute("usuario", user);
                    response.sendRedirect("vistas_administrador/administradorModuloPrincipal.jsp");

                } else if ((!usuario.isEmpty() && (!contrasena.isEmpty()) && (password == null || password.isEmpty()))) { // usuario y/o contraseña incorrectos ok
                    String limpiarCampo = "";
                    sesion.setAttribute("formularioAdminDatosIncorrectos", limpiarCampo);
                    String invalidUser = "Usuario y/o contraseña incorrectos";
                    sesion.setAttribute("formularioAdminDatosIncorrectos", invalidUser);
                    response.sendRedirect("vistas_administrador/administradorLogin.jsp");
                } else {
                    response.sendRedirect("vistas/index.jsp");
                }

                break;

            case FINALIZAR_SESION:

                HttpSession finalizarSesionAdmin = request.getSession();
                finalizarSesionAdmin.invalidate();
                response.sendRedirect("vistas_administrador/administradorLogin.jsp");
                break;

            default:

                request.getRequestDispatcher("index.jsp").forward(request, response);
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
