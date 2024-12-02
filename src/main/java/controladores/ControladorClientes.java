/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import dominio.EntidadClientes;
import datos.ClientesDAO;
import datos.PedidosDAO;
import dominio.EntidadPedidos;
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
@WebServlet(name = "ControladorClientes", urlPatterns = {"/ControladorClientes"})
public class ControladorClientes extends HttpServlet {

    EntidadClientes cliente = new EntidadClientes();
    PedidosDAO pDAO = new PedidosDAO();
    ClientesDAO clienteDAO = new ClientesDAO();

    public static final String REGRESAR_COMPRAR = "carritoregresar"; 
    public static final String INICIAR_SESION_IR = "carritoiniciarsesion";         
    public static final String ACTUALIZAR_POR_ID_SESSION = "Actualizardatospedido";
    public static final String INICIAR_SESION = "Iniciar Sesión";
    public static final String LISTAR_TODOS_CLIENTES = "ListarTodosClientes";
    

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
            out.println("<title>Servlet ControladorClientes</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorClientes at " + request.getContextPath() + "</h1>");
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
            
            case REGRESAR_COMPRAR:
                
                response.sendRedirect("vistas/pizzas_tradi_uno.jsp");
                 break;
                 
            case INICIAR_SESION_IR: 
                
                response.sendRedirect("vistas/userLogin.jsp");
                 break;
                
            case INICIAR_SESION:
                
                HttpSession sesion = request.getSession();

                String usuario = request.getParameter("usuario");
                String contrasena = request.getParameter("contrasena");

                if (usuario == null || usuario.isEmpty() || contrasena == null || contrasena.isEmpty()) { //campos de formulario vaciós ok
                    String limpiarCampo = "";
                    sesion.setAttribute("formularioDatosIncorrectos", limpiarCampo);
                    String campoVacio = "Favor de proporcionar usuario y/o contraseña";
                    sesion.setAttribute("formularioDatosIncorrectos", campoVacio);
                    response.sendRedirect("vistas/userLogin.jsp");
                    break;
                }

                EntidadClientes clientePassUser = clienteDAO.validarPassUser(usuario);

                String userId = clientePassUser.getUserIdCliente();

                if (!usuario.isEmpty() && userId == null || userId.isEmpty()) { // usuario no registrado 
                    String limpiarCampo = "";
                    sesion.setAttribute("formularioDatosIncorrectos", limpiarCampo);
                    String emptyUser = "usuario incorrecto o no registrado";
                    sesion.setAttribute("formularioDatosIncorrectos", emptyUser);
                    response.sendRedirect("vistas/userLogin.jsp");
                    break;
                }

                //listar por id para saber si existe, si no existe redireccionar con mensaje, si sí, continuar flujo
                EntidadClientes clientePass = new EntidadClientes();
                clientePass = clienteDAO.validarPass(usuario, contrasena);
              
                String user = clientePass.getUserIdCliente();
                String password = clientePass.getPassword();

                EntidadClientes eC = new EntidadClientes(user);
                clienteDAO.listarClientePedido(eC);

                if (usuario.equals(user) && contrasena.equals(password)) { //usuario y contraseña correctos ok
                    
                    String sucursalEnvio = (String) sesion.getAttribute("sucursalpedido");
                    System.out.println("Sucursal de envío: " + sucursalEnvio);
                    String formaEnvioDomicilio = (String) sesion.getAttribute("formaenviodomicilio");
                    System.out.println("Envío a domicilio: " + formaEnvioDomicilio);
                    
                    //Pedido a sucursal
                    if(sucursalEnvio!=null && !"".equals(sucursalEnvio)){
                    sesion.setAttribute("idUser", userId);
                    eC.setCalle(sucursalEnvio);
                    eC.setNumeroExterior(sucursalEnvio);
                    eC.setNumeroInterior(sucursalEnvio);
                    eC.setColonia(sucursalEnvio);
                    eC.setDelegacion(sucursalEnvio);
                    int cp = 0; 
                    eC.setCodigoPostal(cp);
                    sesion.setAttribute("datoscliente", eC);
                    
                    String entregaSucursal = "Entrega en sucursal: " + sucursalEnvio;
                    sesion.setAttribute("domicilioEntregaSucursal", entregaSucursal);
                    System.out.println("Domicilio a registrar en entrega en sucursal..."+ entregaSucursal);
                     
                    String datosSesion = sesion.getId();
                    double totalPedido = (double) sesion.getAttribute("subTotal");
                    System.out.println("Total del pedido realizado" + totalPedido);
                    sesion.setAttribute("total", totalPedido);
                    EntidadPedidos pedidoListas = new EntidadPedidos(datosSesion);
                    List<EntidadPedidos> listasPedidos = pDAO.listarPedidosCliente(pedidoListas);
                    sesion.setAttribute("datospedido", listasPedidos);                  
                    response.sendRedirect("vistas/ordenpedido.jsp");
                    
                    //Pedido a domicilio
                    }else if (formaEnvioDomicilio!=null && !"".equals(formaEnvioDomicilio)){
                        sesion.setAttribute("idUser", userId);
                    sesion.setAttribute("cliente", eC);
                    response.sendRedirect("vistas/formularioRegistroClienteListar.jsp"); 
                    }
                    
                    
                } else if ((!usuario.isEmpty() && (!contrasena.isEmpty()) && (password == null || password.isEmpty()))) { // usuario y/o contraseña incorrectos ok
                    String limpiarCampo = "";
                    sesion.setAttribute("formularioDatosIncorrectos", limpiarCampo);
                    String invalidUser = "Usuario y/o contraseña incorrectos";
                    sesion.setAttribute("formularioDatosIncorrectos", invalidUser);
                    response.sendRedirect("vistas/userLogin.jsp");
                } else {
                    response.sendRedirect("vistas/index.jsp");
                }

                break;

            
                
            case ACTUALIZAR_POR_ID_SESSION:

                HttpSession sesionS = request.getSession();
                EntidadClientes clienteSesion = (EntidadClientes) sesionS.getAttribute("cliente");
                
                String id = (String) sesionS.getAttribute("idUser");

                String nombreForm = clienteSesion.getNombre();
                                

                String street = clienteSesion.getCalle();
                String calleForm = request.getParameter("calle-form-cliente");
                if (calleForm == null || calleForm.isEmpty()) {
                    calleForm = street; // Asigna el valor recuperado a nivel de sesión si nombreForm está vacía                   
                }

                
                 String numExt = clienteSesion.getNumeroExterior();
                String numExtString = request.getParameter("numeroexterior-form-cliente");
                if (numExtString == null || numExtString.isEmpty()) {
                    numExtString = numExt; // Asigna el valor recuperado a nivel de sesión si nombreForm está vacía                   
                }

                String numInt = clienteSesion.getNumeroInterior();
                String numIntString = request.getParameter("numerointerior-form-cliente");
                 if (numIntString == null || numIntString.isEmpty()) {
                    numIntString = numInt; 
                        if(numIntString == null || numIntString.isEmpty()){
                            numIntString = "0";
                        }
                }

                String block = clienteSesion.getColonia();
                String coloniaForm = request.getParameter("colonia-form-cliente");
                if (coloniaForm == null || coloniaForm.isEmpty()) {
                    coloniaForm = block; // Asigna el valor recuperado a nivel de sesión si nombreForm está vacía                   
                }

                String mun = clienteSesion.getDelegacion();
                String delegacionForm = request.getParameter("delegacion-form-cliente");
                if (delegacionForm == null || delegacionForm.isEmpty()) {
                    delegacionForm = mun; // Asigna el valor recuperado a nivel de sesión si nombreForm está vacía                   
                }

                int zip = clienteSesion.getCodigoPostal();
                int cPForm = 0;
                String cPFormString = request.getParameter("cp-form-cliente");
                if (cPFormString != null && !"".equals(cPFormString)) {
                    cPForm = Integer.parseInt(cPFormString);
                } else {
                    cPForm = zip;
                }

                long telephone = clienteSesion.getTelefono();
                long telefonoForm = 0;
                String telefonoFormString = request.getParameter("telefono-form-cliente");
                if (telefonoFormString != null && !"".equals(telefonoFormString)) {
                    telefonoForm = Long.parseLong(telefonoFormString);
                } else {
                    telefonoForm = telephone;
                }

                String eMailForm = clienteSesion.geteMail();
               
                if ((nombreForm == null || "".equals(nombreForm) || nombreForm.isEmpty())/**/ || (calleForm == null || "".equals(calleForm) || calleForm.isEmpty())/**/ || (numExtString == null || "".equals(numExtString) || numExtString.isEmpty())/**/ || (coloniaForm == null || "".equals(coloniaForm) || coloniaForm.isEmpty())/**/ || (numIntString == null || "".equals(numIntString) || numIntString.isEmpty())/**/ || (delegacionForm == null || "".equals(delegacionForm) || delegacionForm.isEmpty())/**/ || (cPForm == 0)/**/ || (telefonoForm == 0)/**/ || (eMailForm == null || "".equals(eMailForm) || eMailForm.isEmpty())) {
                    response.sendRedirect("vistas/formularioRegistroClienteListar.jsp");
                } else {
                    
                    EntidadClientes clienteP = new EntidadClientes(id, nombreForm, calleForm, numExtString, numIntString, coloniaForm, delegacionForm, cPForm, telefonoForm, eMailForm);
                    int listaClientes = new ClientesDAO().actualizarClientesPorId(clienteP);
                    HttpSession sesionOrdenDatos = request.getSession();
                    String datosSesion = sesionOrdenDatos.getId();
                    double totalPedido = (double) sesionOrdenDatos.getAttribute("subTotal");
                    System.out.println("Total del pedido realizado" + totalPedido);
                    sesionOrdenDatos.setAttribute("total", totalPedido);
                    EntidadPedidos pedidoListas = new EntidadPedidos(datosSesion);
                    List<EntidadPedidos> listasPedidos = pDAO.listarPedidosCliente(pedidoListas);
                    sesionOrdenDatos.setAttribute("datoscliente", clienteP);
                    sesionOrdenDatos.setAttribute("datospedido", listasPedidos);                  
                    response.sendRedirect("vistas/ordenpedido.jsp");
                    
                }

                break;
                
            case LISTAR_TODOS_CLIENTES:
                
                List<EntidadClientes> listaClientes = clienteDAO.listarTodosClientes();
                HttpSession sesionClientes = request.getSession();
                sesionClientes.setAttribute("listaDeClientes", listaClientes);
                response.sendRedirect("vistas_administrador/administradorListaClientes.jsp");
            
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
