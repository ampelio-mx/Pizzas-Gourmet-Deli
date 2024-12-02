/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import datos.ProductosDAO;
import dominio.EntidadProductos;
import dominio.EntidadProductos;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Ampelio
 */
@MultipartConfig
@WebServlet(name = "ControladorProductosCopia", urlPatterns = {"/ControladorProductosCopia"})
public class ControladorProductos extends HttpServlet {

    public static final String ACCION_CREAR_PRODUCTO_PIZZA = "insertar";
    public static final String ACCION_CREAR_PRODUCTO_BEBIDA = "insertarBebida";
    public static final String ACCION_CREAR_PRODUCTO_POSTRE = "insertarPostre";
    public static final String ACCION_CREAR_PRODUCTO_EXTRAS = "insertarAntojito";
    
    public static final String ACTUALIZAR_TRADICIONALES_CLASICAS = "Actualizar Tradicionales Clasicas";
    public static final String ACTUALIZAR_TRADICIONALES_ESPECIALES = "Actualizar Tradicionales Especiales";
    public static final String ACCION_ACTUALIZAR_DIFERENCIADOR = "Actualizar Diferenciador";
    public static final String ACCION_ACTUALIZAR_POR_ID = "actualizar";
    public static final String ACCION_ACTUALIZAR_IMAGEN_BY_ID = "actualizarimagen";
    

    public static final String ACCION_LISTAR = "Listar";
    public static final String LISTAR_PIZZA_POR_ID = "ListarPizzaPorId";
    
    public static final String ELIMINAR_PRODUCTO_POR_ID = "EliminarProductoPorId";
    

    ProductosDAO productoPizzaDAO = new ProductosDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorProductos</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProductos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");

            request.getRequestURI();
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

        String action = request.getParameter("accion");

        switch (action) {

            case "pizzastrauno":
                
                HttpSession sesion = request.getSession();
                List<EntidadProductos> listaProductos = productoPizzaDAO.listarPaginacionUno();
                //request.setAttribute("listapizzas", listaProductos);
                sesion.setAttribute("listapizzas", listaProductos);
                response.sendRedirect("vistas/pizzas_tradi_uno.jsp");
                break;
            
            case "pizzastrados":
                
                HttpSession sesionDos = request.getSession();
                List<EntidadProductos> listaProductosDos = productoPizzaDAO.listarPaginacionDos();
                //request.setAttribute("listapizzas", listaProductos);
                sesionDos.setAttribute("listapizzas", listaProductosDos);
                response.sendRedirect("vistas/pizzas_tradi_dos.jsp");
                break;    
           
            case "pizzastratres":
                
                HttpSession sesionTres = request.getSession();
                List<EntidadProductos> listaProductosTres = productoPizzaDAO.listarPaginacionTres();
                //request.setAttribute("listapizzas", listaProductos);
                sesionTres.setAttribute("listapizzas", listaProductosTres);
                response.sendRedirect("vistas/pizzas_tradi_tres.jsp");
                break;  
                
            case "pizzastracuatro":
                
                HttpSession sesionCuatro = request.getSession();
                List<EntidadProductos> listaProductosCuatro = productoPizzaDAO.listarPaginacionCuatro();
                //request.setAttribute("listapizzas", listaProductos);
                sesionCuatro.setAttribute("listapizzas", listaProductosCuatro);
                response.sendRedirect("vistas/pizzas_tradi_cuatro.jsp");
                break; 
                
            case "pizzasgouruno":
                
                HttpSession sesionCinco = request.getSession();
                List<EntidadProductos> listaProductosCinco = productoPizzaDAO.listarPaginacionGourUno();
                //request.setAttribute("listapizzas", listaProductos);
                sesionCinco.setAttribute("listapizzas", listaProductosCinco);
                response.sendRedirect("vistas/pizzas_gour_uno.jsp");
                break;  
                
            case "pizzasgourdos":
                
                HttpSession sesionSeis = request.getSession();
                List<EntidadProductos> listaProductosSeis = productoPizzaDAO.listarPaginacionGourDos();
                //request.setAttribute("listapizzas", listaProductos);
                sesionSeis.setAttribute("listapizzas", listaProductosSeis);
                response.sendRedirect("vistas/pizzas_gour_dos.jsp");
                break; 
                
            case "pizzasgourtres":
                
                HttpSession sesionSiete = request.getSession();
                List<EntidadProductos> listaProductosSiete = productoPizzaDAO.listarPaginacionGourTres();
                //request.setAttribute("listapizzas", listaProductos);
                sesionSiete.setAttribute("listapizzas", listaProductosSiete);
                response.sendRedirect("vistas/pizzas_gour_tres.jsp");
                break; 
            
            case "pizzasgourcuatro":
                
                HttpSession sesionOcho = request.getSession();
                List<EntidadProductos> listaProductosOcho = productoPizzaDAO.listarPaginacionGourCuatro();
                //request.setAttribute("listapizzas", listaProductos);
                sesionOcho.setAttribute("listapizzas", listaProductosOcho);
                response.sendRedirect("vistas/pizzas_gour_cuatro.jsp");
                break;
                
            case "bebidasuno":
                
                HttpSession sesionDiez = request.getSession();
                List<EntidadProductos> listaProductosDiez = productoPizzaDAO.listarPaginacionBebidasUno();
                //request.setAttribute("listapizzas", listaProductos);
                for (EntidadProductos listaProductosArreglo : listaProductosDiez){
                    
                    Double precioProducto = listaProductosArreglo.getPrecioBebidas();
                    System.out.println("Precio bebidas: " + precioProducto);
                }
                sesionDiez.setAttribute("listapizzas", listaProductosDiez);
                response.sendRedirect("vistas/pizzas_bebidas_uno.jsp");
                break; 
                
            case "bebidasdos":
                
                HttpSession sesionOnce = request.getSession();
                List<EntidadProductos> listaProductosOnce = productoPizzaDAO.listarPaginacionBebidasDos();
                //request.setAttribute("listapizzas", listaProductos);
                for (EntidadProductos listaProductosArreglo : listaProductosOnce){
                    
                    Double precioProducto = listaProductosArreglo.getPrecioBebidas();
                    System.out.println("Precio bebidas: " + precioProducto);
                }
                sesionOnce.setAttribute("listapizzas", listaProductosOnce);
                response.sendRedirect("vistas/pizzas_bebidas_dos.jsp");
                break; 
                
                
            case "antojitos":
                
                HttpSession sesionNueve = request.getSession();
                List<EntidadProductos> listaProductosNueve = productoPizzaDAO.listarPaginacionAntojUno();
                //request.setAttribute("listapizzas", listaProductos);
                for (EntidadProductos listaProductosArreglo : listaProductosNueve){
                    
                    Double precioProducto = listaProductosArreglo.getPrecioExtras();
                    System.out.println("Precio antojitos: " + precioProducto);
                }
                sesionNueve.setAttribute("listapizzas", listaProductosNueve);
                response.sendRedirect("vistas/pizzas_antojitos_uno.jsp");
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

        String action = request.getParameter("accion");

        switch (action) {

            case ACCION_CREAR_PRODUCTO_PIZZA:

                int idPizza = 0;
                String idPizzaString = request.getParameter("idProducto");
                if (idPizzaString != null && !"".equals(idPizzaString)) {
                    idPizza = Integer.parseInt(idPizzaString);
                }

                String namePizza = request.getParameter("nombrePizza");

                double precioMini = 0;
                String precioMiniString = request.getParameter("precioMini");
                if (precioMiniString != null && !"".equals(precioMiniString)) {
                    precioMini = Double.parseDouble(precioMiniString);
                }

                double precioIndi = 0;
                String precioIndiString = request.getParameter("precioIndividual");
                if (precioIndiString != null && !"".equals(precioIndiString)) {
                    precioIndi = Double.parseDouble(precioIndiString);
                }

                double precioChica = 0;
                String precioChicaString = request.getParameter("precioChica");
                if (precioChicaString != null && !"".equals(precioChicaString)) {
                    precioChica = Double.parseDouble(precioChicaString);
                }

                double precioMed = 0;
                String precioMedString = request.getParameter("precioMediana");
                if (precioMedString != null && !"".equals(precioMedString)) {
                    precioMed = Double.parseDouble(precioMedString);
                }

                double precioGde = 0;
                String precioGdeString = request.getParameter("precioGrande");
                if (precioGdeString != null && !"".equals(precioGdeString)) {
                    precioGde = Double.parseDouble(precioGdeString);
                }

                double precioFamiliar = 0;
                String precioFamiliarString = request.getParameter("precioFamilar");
                if (precioFamiliarString != null && !"".equals(precioFamiliarString)) {
                    precioFamiliar = Double.parseDouble(precioFamiliarString);
                }
                
                double precioBebidas = 0;
                String precioBebidasString = request.getParameter("precioBebida");
                if (precioBebidasString != null && !"".equals(precioBebidasString)) {
                    precioBebidas = Double.parseDouble(precioBebidasString);
                }
                
                double precioPostres = 0;
                String precioPostresString = request.getParameter("precioPostre");
                if (precioPostresString != null && !"".equals(precioPostresString)) {
                    precioPostres = Double.parseDouble(precioPostresString);
                }
                
                double precioExtras = 0;
                String precioExtrasString = request.getParameter("precioAntojito");
                if (precioExtrasString != null && !"".equals(precioExtrasString)) {
                    precioExtras = Double.parseDouble(precioExtrasString);
                }
              

                int diferenciador = 0;
                String diferenciadorString = request.getParameter("diferenciadorPizza");
                if (diferenciadorString != null && !"".equals(diferenciadorString)) {
                    diferenciador = Integer.parseInt(diferenciadorString);
                }

                String descripcionPizza = request.getParameter("descripcionPizza");

                String categoriaPizza = request.getParameter("categoriaProducto");

                Part part = request.getPart("imagenProducto");
                InputStream inputStream = part.getInputStream();

                EntidadProductos productoPizza = new EntidadProductos(idPizza, namePizza, precioMini, precioIndi, precioChica, precioMed, precioGde, precioFamiliar, precioBebidas, precioPostres, precioExtras, diferenciador, descripcionPizza, categoriaPizza, inputStream);
                productoPizzaDAO.insertarProductos(productoPizza);
                response.sendRedirect("vistas_administrador/administradorProductos.jsp");
                break;

            case ACCION_ACTUALIZAR_POR_ID:
            
                int idProductoActual = 0;
                String idProductoActualString = request.getParameter("idProductoActual");
                if (idProductoActualString != null && !"".equals(idProductoActualString)) {
                    idProductoActual = Integer.parseInt(idProductoActualString);
                }

                String namePizzaActual = request.getParameter("nombrePizzaActual");
                
                double precioMiniActualizarPizza = 0;
                String precioMiniActualizarPizzaString = request.getParameter("precioMiniActual");
                if (precioMiniActualizarPizzaString != null && !"".equals(precioMiniActualizarPizzaString)) {
                    precioMiniActualizarPizza = Double.parseDouble(precioMiniActualizarPizzaString);
                }

                double precioIndiv = 0;
                String precioIndivString = request.getParameter("precioIndividualActual");
                if (precioIndivString != null && !"".equals(precioIndivString)) {
                    precioIndiv = Double.parseDouble(precioIndivString);
                }

                double precioChic = 0;
                String precioChicString = request.getParameter("precioChicaActual");
                if (precioChicString != null && !"".equals(precioChicString)) {
                    precioChic = Double.parseDouble(precioChicString);
                }

                double precioMedi = 0;
                String precioMediString = request.getParameter("precioMedianaActual");
                if (precioMediString != null && !"".equals(precioMediString)) {
                    precioMedi = Double.parseDouble(precioMediString);
                }

                double precioGdeActualizarPizza = 0;
                String precioGdeActualizarPizzaString = request.getParameter("precioGrandeActual");
                if (precioGdeActualizarPizzaString != null && !"".equals(precioGdeActualizarPizzaString)) {
                    precioGdeActualizarPizza = Double.parseDouble(precioGdeActualizarPizzaString);
                }

                double precioFam = 0;
                String precioFamString = request.getParameter("precioFamilarActual");
                if (precioFamString != null && !"".equals(precioFamString)) {
                    precioFam = Double.parseDouble(precioFamString);
                }    
                    
                double precioBebidasActual = 0;
                String precioBebidasActualString = request.getParameter("precioBebidaActual");
                if (precioBebidasActualString != null && !"".equals(precioBebidasActualString)) {
                    precioBebidasActual = Double.parseDouble(precioBebidasActualString);
                }
                
                double precioPostresActual = 0;
                String precioPostresActualString = request.getParameter("precioPostreActual");
                if (precioPostresActualString != null && !"".equals(precioPostresActualString)) {
                    precioPostresActual = Double.parseDouble(precioPostresActualString);
                }
                
                double precioExtrasActual = 0;
                String precioExtrasActualString = request.getParameter("precioAntojitoActual");
                if (precioExtrasActualString != null && !"".equals(precioExtrasActualString)) {
                    precioExtrasActual = Double.parseDouble(precioExtrasActualString);
                }
              
                int diferenciadorActual = 0;
                String diferenciadorActualString = request.getParameter("diferenciadorPizzaActual");
                if (diferenciadorActualString != null && !"".equals(diferenciadorActualString)) {
                    diferenciadorActual = Integer.parseInt(diferenciadorActualString);
                }
                
                String descripcionPizzaActual = request.getParameter("descripcionPizzaActual");
                
                Part partDos = request.getPart("imagenProductoActual");
                InputStream inputStreamDos = partDos.getInputStream();

                EntidadProductos productos = new EntidadProductos(idProductoActual, namePizzaActual, precioMiniActualizarPizza, precioIndiv, precioChic, precioMedi, precioGdeActualizarPizza, precioFam, precioBebidasActual, precioPostresActual, precioExtrasActual, diferenciadorActual, descripcionPizzaActual, inputStreamDos);
                int modificarRegistros = productoPizzaDAO.actualizarPorId(productos);

                response.sendRedirect("vistas_administrador/administradorProductos.jsp");
                
                break;
             
                
            case ACCION_ACTUALIZAR_IMAGEN_BY_ID: 
                
                int idProdActImg = 0;
                String idProdActImgString = request.getParameter("idProducto");
                if (idProdActImgString != null && !"".equals(idProdActImgString)) {
                    idProdActImg = Integer.parseInt(idProdActImgString);
                }
                
                Part partTres = request.getPart("imagenProductoActual");
                InputStream inputStreamTres = partTres.getInputStream();
                
                EntidadProductos entidadActualizaImg = new EntidadProductos(idProdActImg, inputStreamTres);
                int actualizarImagen = productoPizzaDAO.actualizarImagenPorId(entidadActualizaImg);
                
                RequestDispatcher miDispatcher1 = request.getRequestDispatcher("/index.jsp");
                miDispatcher1.forward(request, response);
                break;
                
            case ACCION_ACTUALIZAR_DIFERENCIADOR:

                int diferenciadorProduct = 0;
                String diferenciadorProductString = request.getParameter("diferenciadorProducto");
                if (diferenciadorProductString != null && !"".equals(diferenciadorProductString)) {
                    diferenciadorProduct = Integer.parseInt(diferenciadorProductString);
                }

                double precioMinis = 0;
                String precioMiniStrings = request.getParameter("precioMini");
                if (precioMiniStrings != null && !"".equals(precioMiniStrings)) {
                    precioMinis = Double.parseDouble(precioMiniStrings);
                }

                double precioIndivs = 0;
                String precioIndivStrings = request.getParameter("precioIndividual");
                if (precioIndivStrings != null && !"".equals(precioIndivStrings)) {
                    precioIndivs = Double.parseDouble(precioIndivStrings);
                }

                double precioChics = 0;
                String precioChicStrings = request.getParameter("precioChica");
                if (precioChicStrings != null && !"".equals(precioChicStrings)) {
                    precioChics = Double.parseDouble(precioChicStrings);
                }

                double precioMedis = 0;
                String precioMedStrings = request.getParameter("precioMediana");
                if (precioMedStrings != null && !"".equals(precioMedStrings)) {
                    precioMedis = Double.parseDouble(precioMedStrings);
                }

                double precioGdes = 0;
                String precioGdeStrings = request.getParameter("precioGrande");
                if (precioGdeStrings != null && !"".equals(precioGdeStrings)) {
                    precioGdes = Double.parseDouble(precioGdeStrings);
                }

                double precioFams = 0;
                String precioFamStrings = request.getParameter("precioFamilar");
                if (precioFamStrings != null && !"".equals(precioFamStrings)) {
                    precioFams = Double.parseDouble(precioFamStrings);
                }

                EntidadProductos productoss = new EntidadProductos(precioMinis, precioIndivs, precioChics, precioMedis, precioGdes, precioFams, diferenciadorProduct);
                int modificarRegistross = productoPizzaDAO.actualizarPorDiferenciador(productoss);

                RequestDispatcher miDispatchers = request.getRequestDispatcher("/index.jsp");
                miDispatchers.forward(request, response);
                break;

            case ACCION_LISTAR:

                List<EntidadProductos> listaProduct = productoPizzaDAO.listarTodasPizzasDiferenciadorTra();
                                
                HttpSession session = request.getSession();
                session.setAttribute("listaProduct", listaProduct);
                response.sendRedirect("vistas_administrador/administradorListaProductos.jsp");
                break;

            case LISTAR_PIZZA_POR_ID:
            
                int idPizzaListar = 0;
                String idPizzaListarString = request.getParameter("recuperarPizzaId");
                if (idPizzaListarString != null && !"".equals(idPizzaListarString)) {
                    idPizzaListar = Integer.parseInt(idPizzaListarString);
                }

                EntidadProductos eProductoPizza = new EntidadProductos(idPizzaListar);
                productoPizzaDAO.listarPizzaPorId(eProductoPizza);

                request.setAttribute("productospizza", eProductoPizza);
                request.getRequestDispatcher("vistas_administrador/administradorModuloPrincipal.jsp").forward(request, response);

                break;
                
            case ELIMINAR_PRODUCTO_POR_ID:
                
                int idEliminarProducto = 0;
                String idEliminarProductoString = request.getParameter("idProductoEliminar");
                if (idEliminarProductoString != null && !"".equals(idEliminarProductoString)) {
                    idEliminarProducto = Integer.parseInt(idEliminarProductoString);
                }
                
                EntidadProductos productoEliminar = new EntidadProductos(idEliminarProducto);
                
                int eliminarProducto = productoPizzaDAO.eliminarProductoPorId(productoEliminar);
                response.sendRedirect("vistas_administrador/administradorProductos.jsp");
                break;

            default:
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;

        }/*
        // String boton = request.getParameter("botonform");
        response.sendRedirect("index.jsp");
        
        int idPizza = 0;
        String idPizzaString = request.getParameter("formulario");
        if (idPizzaString != null && !"".equals(idPizzaString)) {
            idPizza = Integer.parseInt(idPizzaString);
        }
        
        EntidadProductos eProductoPizzas = new EntidadProductos(idPizza);
        pDAO.listarPizzaPorIdFormPizzas(eProductoPizzas);
        
       
        
        String opcionSeleccionada = request.getParameter("opcion");
        
        String boton = request.getParameter("botonform");
        
        if(boton.equals("botonform")){
            
            request.setAttribute("pizza", eProductoPizzas); 
              request.getRequestDispatcher("vistas/pizzas.jsp").forward(request, response);
              
            //response.sendRedirect("index.jsp");
        }*/
 /* switch (opcionSeleccionada){
        
            case "pepperonitcmini":
              
              request.setAttribute("pizza", eProductoPizzas);
              
              System.out.println("Redireccionando a /vistas/pizzas.jsp");
              response.sendRedirect("/ControladorClientes");
              //request.getRequestDispatcher("/ControladorClientes").forward(request, response); 
              response.getWriter().write("imprimir mensaje");
              break;
              
            case "pepperonitcind":
              
              request.setAttribute("pizza", eProductoPizzas); 
              request.getRequestDispatcher("vistas/pizzas.jsp").forward(request, response);
              break;
              
            default:
                request.getRequestDispatcher("index.jsp").forward(request, response);
              break;
        }*/

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
